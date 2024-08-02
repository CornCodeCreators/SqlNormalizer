<?php

namespace CornCodeCreations\SqlNormalizer;

class AlterTableStatement
{
    /**
     * @deprecated Replaced by `addIndex_DeactivateRedundantIndexCreation()`-function
     */
    public static function sanitize_AlterTableCommand_AddIndex_DeactivateRedundantCommands(string $sqlSchema): string
    {
        return self::addIndex_DeactivateRedundantIndexCreation($sqlSchema);
    }

    /**
     * Deactivates redundant INDEX-creation commands by commenting out
     * lines where an index is created on a column that already has a primary key.
     *
     * Example (pre):
     * ```sql
     * ALTER TABLE `Employees` ADD INDEX `EmployeeID` (`EmployeeID`);
     * ALTER TABLE `Employees` ADD INDEX `PostalCode` (`PostalCode`);
     * ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);
     * ```
     *
     * Example (post):
     * ```sql
     * # ALTER TABLE `Employees` ADD INDEX `EmployeeID` (`EmployeeID`);
     * ALTER TABLE `Employees` ADD INDEX `PostalCode` (`PostalCode`);
     * ALTER TABLE `Employees` ADD PRIMARY KEY (`EmployeeID`);
     * ```
     */
    public static function addIndex_DeactivateRedundantIndexCreation(string $sqlSchema): string
    {
        // Use case 1: INDEX prior PRIMARY KEY
        $pattern      = '/^(ALTER TABLE `)(?<table>[^`]+)(` ADD (?<unique>UNIQUE ){0,1}INDEX `)(?<index>[^`]+)(` \(`)(?<field>[^`]+)(`\);)(.*?)(ALTER TABLE `)\k<table>(` ADD PRIMARY KEY \(`)\k<field>(`\);$)/sm';
        $replacement  = '# $1$2$3$5$6$7$8$9$10$2$11$7$12';
        $sqlSchemaNew = preg_replace($pattern, $replacement, $sqlSchema);

        if (!$sqlSchemaNew) {
            throw new \RuntimeException('Error occurred during normalization step 1!');
        }

        if (is_array($sqlSchemaNew)) {
            throw new \RuntimeException('String expected, but Array received!');
        }

        $sqlSchema = $sqlSchemaNew;

        // Use case 2: INDEX after PRIMARY KEY
        $pattern      = '/^(ALTER TABLE `)(?<table>[^`]+)(` ADD PRIMARY KEY \(`)(?<field>[^`]+)(`\).*?)(ALTER TABLE `)\k<table>(` ADD (?<unique>UNIQUE ){0,1}INDEX `)(?<index>[^`]+)(` \(`)\k<field>(`\);)$/sm';
        $replacement  = '$1$2$3$4$5# $6$2$7$9$10$4$11';
        $sqlSchemaNew = preg_replace($pattern, $replacement, $sqlSchema);

        if (!$sqlSchemaNew) {
            throw new \RuntimeException('Error occurred during normalization of INDEX!');
        }

        if (is_array($sqlSchemaNew)) {
            throw new \RuntimeException('String expected, but Array received!');
        }

        $sqlSchema = $sqlSchemaNew;

        return $sqlSchema;
    }


    /**
     * @deprecated replaced by `addIndex_sanitizeIndexNamesAndColumnNames()`-function
     */
    public static function sanitize_AlterTableCommand_AddIndex_IndexName_And_ColumnName(string $sqlSchema): string
    {
        return self::addIndex_sanitizeIndexNamesAndColumnNames($sqlSchema);
    }

    /**
     * This function will remove unwanted characters from COLUMN-names and INDEX-names!
     * Unwanted characters are '-' (hyphen) and ' ' (blank)
     *
     * On top INDEX-names will be transformed to lower case.
     */
    public static function addIndex_sanitizeIndexNamesAndColumnNames(string $sqlSchema): string
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
     * @deprecated replaced by 'addPrimaryKey_sanitizeColumnName()'-function
     */
    public static function sanitize_AlterTableCommand_AddPrimaryKey_ColumnName(string $sqlSchema): string
    {
        return self::addPrimaryKey_sanitizeColumnName($sqlSchema);
    }

    /**
     * This function will remove unwanted characters from COLUMN-names for PRIMARY KEYs!
     * Unwanted characters are '-' (hyphen) and ' ' (blank)
     */
    public static function addPrimaryKey_sanitizeColumnName(string $sqlSchema): string
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

}