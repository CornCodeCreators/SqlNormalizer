<?php declare(strict_types=1);

namespace CornCodeCreations\SqlNormalizer\Tests\Statement;


use CornCodeCreations\SqlNormalizer\Statement\AlterTable;

final class AlterTableTest extends AbstractStatementTestCase
{
    protected function getBaseFolder(): string
    {
        return self::FIXTURES_ALTER_TABLE_PATH;
    }

    public function testAddIndex_DeactivateRedundantIndexCreation(): void
    {
        // ARRANGE
        $specimenContent = $this->getSpecimenContent('cases.sql');
        $expectedContent = $this->getExpectedContent('addIndex_DeactivateRedundantIndexCreation.sql');

        // ACT
        $sanitizedContent = AlterTable::addIndex_DeactivateRedundantIndexCreation($specimenContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }

    public function testAddIndex_sanitizeIndexNamesAndColumnNames(): void
    {
        // ARRANGE
        $specimenContent = $this->getSpecimenContent('cases.sql');
        $expectedContent = $this->getExpectedContent('addIndex_sanitizeIndexNamesAndColumnNames.sql');

        // ACT
        $sanitizedContent = AlterTable::addIndex_sanitizeIndexNamesAndColumnNames($specimenContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }

    public function testAddPrimaryKey_sanitizeColumnName(): void
    {
        // ARRANGE
        $specimenContent = $this->getSpecimenContent('cases.sql');
        $expectedContent = $this->getExpectedContent('addPrimaryKey_sanitizeColumnName.sql');

        // ACT
        $sanitizedContent = AlterTable::addPrimaryKey_sanitizeColumnName($specimenContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }
}