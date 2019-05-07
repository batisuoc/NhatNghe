<?php

class Test
{
    public $pub = "Public attribute";
    protected $prot = "Protected attribute";
    private $priv = "Private attribute";

    public function toString()
    {
        echo $this->pub,"<br>";
        echo $this->prot,"<br>";
        echo $this->priv,"<br>";
    }
}

class TestChild extends Test
{
    protected $childAttr = "Child Attribute";
    function toString()
    {
        echo $this->pub,"<br>";
        echo $this->prot,"<br>";
        echo $this->priv,"<br>";//error
    }
}


$testObj = new Test();
echo $testObj->pub,"<hr/>";

$testObj->toString();

// echo $testObj->prot;//error
// echo $testObj->priv;//error

$testChild = new TestChild();
echo $testChild->pub,"<br>";
// echo $testChild->childAttr;//error
$testChild->toString();

?>