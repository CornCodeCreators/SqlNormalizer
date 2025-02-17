<?php

namespace CornCodeCreations\SqlNormalizer\Statement;

class InsertInto
{
    /**
     * This function will remove unwanted characters from column-names!
     * Unwanted characters are '-' (hyphen) and ' ' (blank)
     */
    public static function sanitizeColumnNames(string $sqlData): string
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
    public static function addLinebreakPerItem(string $sqlData): string
    {
        $sqlData = str_replace('VALUES (', "VALUES\n  (", $sqlData);
        $sqlData = str_replace('), (', "),\n  (", $sqlData);

        return $sqlData;
    }
}