<?php

class HighSchoolSweetheart
{
    public function firstLetter(string $name): string
    {
        return substr(trim($name), 0, 1);
    }

    public function initial(string $name): string
    {
        return strtoupper($this->firstLetter($name)) . ".";
    }

    public function initials(string $name): string
    {
        $names = explode(" ", $name);
        return $this->initial($names[0]) . " " . $this->initial($names[1]);
    }

    public function pair(string $sweetheart_a, string $sweetheart_b): string
    {
        $initials_a = $this->initials($sweetheart_a);
        $initials_b = $this->initials($sweetheart_b);
        // figuring out the heart was my least favorite part
        // there's likely a better way to go about doing this
        // but I gave up at this point
        return "     ******       ******\n   **      **   **      **\n **         ** **         **\n**            *            **\n**                         **\n**     $initials_a  +  $initials_b     **\n **                       **\n   **                   **\n     **               **\n       **           **\n         **       **\n           **   **\n             ***\n              *";
    }
}
