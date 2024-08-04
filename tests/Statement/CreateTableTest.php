<?php

namespace CornCodeCreations\SqlNormalizer\Tests\Statement;


use CornCodeCreations\SqlNormalizer\Statement\CreateTable;

class CreateTableTest extends AbstractStatementTestCase
{

    protected function getBaseFolder(): string
    {
        return self::FIXTURES_CREATE_TABLE_PATH;
    }

    public function testAddIndex_DeactivateRedundantIndexCreation(): void
    {
        // ARRANGE
        $dirtyContent    = $this->getDirtyContent('cases.sql');
        $expectedContent = $this->getExpectedContent('sanitizeColumnNames.sql');

        // ACT
        $sanitizedContent = CreateTable::sanitizeColumnNames($dirtyContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }
}