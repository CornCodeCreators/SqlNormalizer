<?php

namespace CornCodeCreations\SqlNormalizer\Tests\Statement;


use CornCodeCreations\SqlNormalizer\Statement\InsertInto;

class InsertIntoTest extends AbstractStatementTestCase
{
    protected function getBaseFolder(): string
    {
        return self::FIXTURES_INSERT_INTO_PATH;
    }

    public function testSanitizeColumnNames(): void
    {
        // ARRANGE
        $dirtyContent    = $this->getDirtyContent('cases.sql');
        $expectedContent = $this->getExpectedContent('sanitizeColumnNames.sql');

        // ACT
        $sanitizedContent = InsertInto::sanitizeColumnNames($dirtyContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }

    public function testAddLinebreakPerItem(): void
    {
        // ARRANGE
        $dirtyContent    = $this->getDirtyContent('cases.sql');
        $expectedContent = $this->getExpectedContent('addLinebreakPerItem.sql');

        // ACT
        $sanitizedContent = InsertInto::addLinebreakPerItem($dirtyContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }
}