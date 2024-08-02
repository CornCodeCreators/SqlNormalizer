<?php

namespace CornCodeCreations\SqlNormalizer;

class CreateTableStatement
{
    /**
     * @deprecated Replaced by 'sanitizeColumnNames()'-function
     */
    public static function sanitize_CreateTableCommand_ColumnNames(string $sqlSchema): string
    {
        return self::sanitizeColumnNames($sqlSchema);
    }

    /**
     * This function will remove unwanted characters from column-names!
     * Unwanted characters are '-' (hyphen) and ' ' (blank)
     */
    public static function sanitizeColumnNames(string $sqlSchema): string
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
}