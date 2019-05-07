<?php

$connection = new mysqli("localhost", "root", "", "news");
if($connection->connect_errno > 0)
{
	die("Error: ". $connection->connect_error);
}

$connection->set_charset("utf8");

$result = $connection->query("SELECT idTL, TenTL FROM theloai");
if(!$result)
{
	die("Error ". $connection->error);
}

echo "<h3>","Number of row : ",$result->num_rows,"</h3>";
?>