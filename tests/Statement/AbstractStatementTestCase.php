<?php declare(strict_types=1);

namespace CornCodeCreators\SqlNormalizer\Tests\Statement;

use CornCodeCreators\LineDumper;
use CornCodeCreators\SqlNormalizer\Tests\Helper\StringHelper;
use PHPUnit\Framework\TestCase;


abstract class AbstractStatementTestCase extends TestCase
{
    const FIXTURES_PATH              = __DIR__ . '/../Fixtures';
    const FIXTURES_ALTER_TABLE_PATH  = self::FIXTURES_PATH . '/alter_table';
    const FIXTURES_CREATE_TABLE_PATH = self::FIXTURES_PATH . '/create_table';
    const FIXTURES_INSERT_INTO_PATH  = self::FIXTURES_PATH . '/insert_into';

    public static function setUpBeforeClass(): void
    {
        parent::setUpBeforeClass();

        self::assertDirectoryExists(self::FIXTURES_PATH);
        self::assertDirectoryExists(self::FIXTURES_ALTER_TABLE_PATH);
        self::assertDirectoryExists(self::FIXTURES_CREATE_TABLE_PATH);
        self::assertDirectoryExists(self::FIXTURES_INSERT_INTO_PATH);
    }

    protected function setUp(): void
    {
        parent::setUp();

        $this->assertDirectoryExists($this->getBaseFolder());
    }

    abstract protected function getBaseFolder(): string;

    private function getSpecimenFolder(): string
    {
        $folder = $this->getBaseFolder() . '/specimen/';
        $this->assertDirectoryExists($folder);

        return $folder;
    }

    private function getExpectedFolder(): string
    {
        $folder = $this->getBaseFolder() . '/expected/';
        $this->assertDirectoryExists($folder);

        return $folder;
    }

    protected function getSpecimenContent(string $filename): string
    {
        $filePath = $this->getSpecimenFolder() . $filename;
        $this->assertFileExists($filePath);

        $content = file_get_contents($filePath);

        return $content;
    }

    protected function getExpectedContent(string $filename): string
    {
        $filePath = $this->getExpectedFolder() . $filename;
        $this->assertFileExists($filePath);

        $content = file_get_contents($filePath);

        return $content;
    }

    public function assertEqualLines(string $expectedString, string $actualString, string $message = ''): void
    {
        try {
            $this->assertSame($expectedString, $actualString, $message);
        } catch (\Throwable $t) {
            $comp = LineDumper::compareLines($expectedString, $actualString);
            self::fail("Failed asserting that two strings are equal.\n\n$comp");
        }
    }
}