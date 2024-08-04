<?php

namespace CornCodeCreations\SqlNormalizer\Tests\Helper;

class StringHelper
{
    public static function compareMultilineString(string $expectedString, string $actualString): string
    {
        if ($expectedString === $actualString) {
            return 'Strings are equal!';
        }

        $expectedLines = explode("\n", $expectedString);
        $actualLines   = explode("\n", $actualString);

        $lineNrWidth = 3;

        $comp = "\n";
        foreach ($expectedLines as $lineId => $expectedLine) {
            $actualLine = (count($actualLines) > $lineId) ? $actualLines[$lineId] : '(line not existing)';

            $lineNr = 'Line '.str_pad((string) ($lineId + 1), $lineNrWidth, ' ', STR_PAD_LEFT);

            if ($actualLine === $expectedLine) {
                $comp .= "$lineNr|   ok| $expectedLine\n"; // white
            } else {
                $comp .= "\033[93m$lineNr|to-be| ".$expectedLine."\033[0m\n"; // yellow
                $comp .= "\033[91m$lineNr|as-is| ".$actualLine."\033[0m\n";  // red
            }
        }

        return $comp;
    }
}
