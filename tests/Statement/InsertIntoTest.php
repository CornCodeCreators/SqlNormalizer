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
        $specimenContent = $this->getSpecimenContent('cases.sql');
        $expectedContent = $this->getExpectedContent('sanitizeColumnNames.sql');

        // ACT
        $sanitizedContent = InsertInto::sanitizeColumnNames($specimenContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }

    public function testAddLinebreakPerItem(): void
    {
        // ARRANGE
        $specimenContent = $this->getSpecimenContent('cases.sql');
        $expectedContent = $this->getExpectedContent('addLinebreakPerItem.sql');

        // ACT
        $sanitizedContent = InsertInto::addLinebreakPerItem($specimenContent);

        // ASSERT
        $this->assertEqualLines($expectedContent, $sanitizedContent);
    }
}