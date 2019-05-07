<?php

//Cach 1
/*class HocSinh
{
	public $name;
	public $dob;
}*/

//Cach 2
class HocSinh
{
	public $name;
	public $dob;

	public function set($name, $dob)
	{
		$this->name = $name;
		$this->dob = $dob;
	}
}

$std1 = new HocSinh;

//Cach 1
/*$std1->name = "Jo Cheng";
$std1->dob = "08/11/1997";*/

//Cach 2
$std1->set("Jo Cheng", "08/11/1997");

echo "Name : ", $std1->name, "<br>";
echo "Day of birth : ", $std1->dob, "<br>";

?>