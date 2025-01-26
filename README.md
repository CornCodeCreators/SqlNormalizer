# SqlNormalizer

> A tool to standardize and improve your SQL strings.

## Background
SQL files are often created under time constraints, leading to inconsistencies and errors in their structure. Over time, these issues can become problematic, especially when stricter syntax is required due to changes in database management systems or as part of optimizing your codebase.

Having consistently well-structured SQL is important for maintaining a reliable and maintainable codebase. `SqlNormalizer` aims to address this by providing a way to adapt and standardize SQL strings effectively.

## Solution
`SqlNormalizer` works by analyzing the SQL strings you provide and automatically adjusting them to meet modern SQL standards. The tool corrects syntax issues, applies consistent formatting, and ensures that your SQL code follows best practices.

This can be particularly useful when dealing with legacy SQL files or when ensuring that new queries are up to standard.

### Features
- **Syntax Correction:** Fixes common syntax errors to ensure compatibility with modern SQL.
- **Consistent Formatting:** Applies a uniform format to your SQL files, making them easier to read and maintain.
- **Best Practices:** Implements recommended practices to improve the performance and reliability of your SQL code.
- **Custom Rules:** Allows customization of formatting and syntax rules to fit your specific project needs.

## Installation
```shell
$ composer require corncodecreators/sql-normalizer
```

## Usage
`SqlNormalizer` provides static functions that is transforming the SQL string and returns a sanitized and normalized SQL string.

Example:

```php
use CornCodeCreations\SqlNormalizer\Statement\AlterTable;

$sql           = "...";
$sqlNormalized =  AlterTable::addPrimaryKey_sanitizeColumnName($sql);
```


## Contribution
`SqlNormalizer` is an open-source project in its early stages. Updates and improvements will be made as needed. As the tool develops, contributions from the community are welcome. Whether you have ideas for new features, improvements, or bug fixes, your help is appreciated.

### How to Contribute
- **Report Issues:** If you encounter any bugs or have suggestions, you can open an issue on our GitHub repository.
- **Submit Pull Requests:** If you have code changes or new features to contribute, feel free to submit a pull request.
- **Provide Feedback:** Any feedback on usability, functionality, or any other aspect of the tool is welcome.

We encourage collaboration and look forward to building a useful tool with the community's help.
