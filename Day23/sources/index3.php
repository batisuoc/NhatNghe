<?php

class Test
{
    var $x = "Day la bien x trong lop cha";
    function toString()
    {
        echo $this->x;
    }
}

class TestChild extends Test
{
    var $y = "Day la bien y trong lop con";
    function toString()
    {
        parent::toString();
        echo $this->y;
    }
}

$testChild = new TestChild();
$testChild->toString();

?>