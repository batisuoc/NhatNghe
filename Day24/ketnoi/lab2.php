<?php

require_once "thuctap.php";
$tt = new thuctap;
$listLT = $tt->getListLoaitin();

?>

<!DOCTYPE html>
<html>
<head>
	<title>Group News</title>
	<style type="text/css">
		#data {
			background-color: #CCC;
			width: 800px;
			margin: auto; 
		}

		#data h3 {
			color: #FFF;
			background-color: #903;
			padding: 5px;
			margin: 0px;
		}
	</style>
</head>
<body>
	<div id="data">
		<?php while ($rowLT = $listLT->fetch_assoc()) { ?>
			<h3><?= $rowLT['Ten'] ?></h3>
		<?php } ?>
	</div>
</body>
</html>