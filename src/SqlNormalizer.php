<?php

namespace CornCodeCreations;

class SqlNormalizer
{
    /**
     * Deactivation of redundant INDEX-creation commands (a primary key on the same
     * column is already creating an index automatically).
     *
     * example (pre):
     * [line 1] ALTER TABLE `Employees` ADD INDEX `EmployeeID` (`EmployeeID`);
     * [line 2] ALTER TABLE `Employees` ADD INDEX `PostalCode` (`PostalCode`);
     * [line 3] ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);
     *
     * example (post):
     * [line 1] # ALTER TABLE `Employees` ADD INDEX `EmployeeID` (`EmployeeID`);
     * [line 2] ALTER TABLE `Employees` ADD INDEX `PostalCode` (`PostalCode`);
     * [line 3] ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);
     */
    public static function sanitize_AlterTableCommand_AddIndex_DeactivateRedundantCommands(string $sqlSchema): string
    {
        // Use case 1: INDEX prior PRIMARY KEY
        $pattern      = '/^(ALTER TABLE `)(?<table>[^`]+)(` ADD (?<unique>UNIQUE ){0,1}INDEX `)(?<index>[^`]+)(` \(`)(?<field>[^`]+)(`\);)(.*?)(ALTER TABLE `)\k<table>(` ADD PRIMARY KEY \(`)\k<field>(`\);$)/sm';
        $replacement  = '# $1$2$3$5$6$7$8$9$10$2$11$7$12';
        $sqlSchemaNew = preg_replace($pattern, $replacement, $sqlSchema);

        if (!$sqlSchemaNew) {
            throw new \App\Service\RuntimeException('Error occurred during normalization step 1!');
        }

        if (is_array($sqlSchemaNew)) {
            throw new \App\Service\RuntimeException('String expected, but Array received!');
        }

        $sqlSchema = $sqlSchemaNew;

        // Use case 2: INDEX after PRIMARY KEY
        $pattern      = '/^(ALTER TABLE `)(?<table>[^`]+)(` ADD PRIMARY KEY \(`)(?<field>[^`]+)(`\).*?)(ALTER TABLE `)\k<table>(` ADD (?<unique>UNIQUE ){0,1}INDEX `)(?<index>[^`]+)(` \(`)\k<field>(`\);)$/sm';
        $replacement  = '$1$2$3$4$5# $6$2$7$9$10$4$11';
        $sqlSchemaNew = preg_replace($pattern, $replacement, $sqlSchema);

        if (!$sqlSchemaNew) {
            throw new \App\Service\RuntimeException('Error occurred during normalization of INDEX!');
        }

        if (is_array($sqlSchemaNew)) {
            throw new \App\Service\RuntimeException('String expected, but Array received!');
        }

        $sqlSchema = $sqlSchemaNew;

        return $sqlSchema;
    }

    /**
     * @deprecated replaced by 'sanitize_AlterTableCommand_AddIndex_ColumnName'
     */
    public static function sanitize_AlterTableCommand_AddIndex_IndexName(string $sqlSchema): string
    {
        throw new \RuntimeException('not to be used anymore');

        $lines = explode("\n", $sqlSchema);

        // change each occurrence of the INDEX-pattern
        foreach ($lines as $key => $line) {
            $pattern = '/^(ALTER TABLE `)(?<table>[^`]+)(` ADD INDEX `)(?<index>[^`]+)(` \(`)(?<column>[^`]+)(`\);)$/';

            preg_match($pattern, $line, $matches);

            if ($matches) {
                $lineOld    = $matches[0];
                $tableName  = $matches['table'];
                $indexName  = $matches['index'];
                $columnName = $matches['column'];

                $indexNameNew = str_replace(['-', ' '], '_', $indexName);

                // update only if difference
                if ($indexName !== $indexNameNew) {
                    // make all small
                    $indexNameNew = strtolower($indexNameNew);

                    // adapt the line
                    $lineNew = "ALTER TABLE `$tableName` ADD INDEX `$indexNameNew` (`$columnName`);";
                    // $lines[$key] = "# $lineOld\n$lineNew";
                    $lines[$key] = $lineNew;
                }
            }
        }

        $sqlSchema = implode("\n", $lines);

        return $sqlSchema;
    }

    /**
     * todo: description
     */
    public static function sanitize_AlterTableCommand_AddIndex_IndexName_And_ColumnName(string $sqlSchema): string
    {
        $pattern = '/ALTER TABLE `(?<table>[^`]+)` ADD (?<unique>UNIQUE ){0,1}INDEX `(?<index>[^`]+)` \(`(?<column>[^`]+)`\);/';

        $sqlSchemaNormalized = preg_replace_callback($pattern, function ($matches) {
            // Capture the table name and the column part
            $tableName  = $matches['table'];
            $unique     = $matches['unique'];
            $indexName  = $matches['index'];
            $columnName = $matches['column'];

            $indexName  = strtolower(str_replace([' ', '-'], '', $indexName));
            $columnName = str_replace([' ', '-'], '', $columnName);

            return "ALTER TABLE `$tableName` ADD {$unique}INDEX `$indexName` (`$columnName`);";
        }, $sqlSchema);

        return $sqlSchemaNormalized;
    }

    /**
     * todo: description
     */
    public static function sanitize_AlterTableCommand_AddPrimaryKey_ColumnName(string $sqlSchema): string
    {
        $pattern = '/ALTER TABLE `(?<table>[^`]+)` ADD PRIMARY KEY \(`(?<column>[^`]+)`\);/';

        $sqlSchemaNormalized = preg_replace_callback($pattern, function ($matches) {
            // Capture the table name and the column part
            $tableName  = $matches['table'];
            $columnName = $matches['column'];

            $columnName = str_replace([' ', '-'], '', $columnName);

            return "ALTER TABLE `$tableName` ADD PRIMARY KEY (`$columnName`);";
        }, $sqlSchema);

        return $sqlSchemaNormalized;
    }

    /**
     * todo: description
     */
    public static function sanitize_CreateTableCommand_ColumnNames(string $sqlSchema): string
    {
        // Garb everything within "CREATE TABLE (...);"
        $pattern = '/CREATE TABLE `(?<table>[^`]+)`[\s\S]*?\((?<colDefs>[\s\S]*?)\);/';

        // OUTER-call: Grab the main-section
        $sqlSchemaNormalized = preg_replace_callback($pattern, function ($matches) {
            // Capture the table name and the column definition part
            $tableName = $matches['table'];
            $colDefs   = $matches['colDefs'];

            $innerPattern = '/`[^`]*`/';
            $colDefs = preg_replace_callback($innerPattern, function ($column) {
                // Remove spaces and dashes within each column name
                return str_replace([' ', '-'], '', $column[0]);
            }, $colDefs);

            return "CREATE TABLE `$tableName`\n ($colDefs);";
        }, $sqlSchema);

        return $sqlSchemaNormalized;
    }

    /**
     * todo: description
     */
    public static function normalizeColumnNamesInInsertIntoClause(string $sqlData): string
    {
        // Garb everything within "INSERT INTO ... VALUES" (and do not consider the detailed data after `VALUES` at all here)
        $pattern = '/^INSERT INTO `(?<table>[^`]+)` \((?<columns>[^)]+)\) VALUES/';

        // OUTER-call: Grab the main-section
        $sqlDataNew = preg_replace_callback($pattern, function ($matches) {
            // Capture the table name and the column names part
            $tableName = $matches['table'];
            $columns   = $matches['columns'];

            // INNER-call: Grab each column name (surrounded by backticks)
            $columns = preg_replace_callback('/`[^`]*`/', function ($column) {
                // Remove spaces and dashes within each column name
                return str_replace([' ', '-'], '', $column[0]);
            }, $columns);

            // Return the modified INSERT INTO statement with the table name
            return 'INSERT INTO `' . $tableName . '` (' . $columns . ') VALUES';
        }, $sqlData);

        return $sqlDataNew;
    }

    /**
     * Transform single line VALUES into multi line VALUES
     */
    public static function normalizeSqlDataByAddingLinebreaks(string $sqlData): string
    {
        $sqlData = str_replace('VALUES (', "VALUES\n  (", $sqlData);
        $sqlData = str_replace('), (', "),\n  (", $sqlData);

        return $sqlData;
    }
}