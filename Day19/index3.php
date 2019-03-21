<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Table</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
	<!-- <table class="table table-dark"></table> -->
    <?php

    $row = 1000;
    $col = 10;
    // echo "<table class='table table-dark' border='1' cellpadding='1' cellspacing='0'>";
    // for ($i=0; $i < $row; $i++) {
    // 	if($i == 0) {
    // 		echo "<tr>";
	   //  	for ($j=0; $j < $col; $j++) { 
	   //  		echo "<th>Title</th>";
	   //  	}
	   //  	echo "</tr>";
    // 	} 
    // 	else {
    // 		echo "<tr>";
	   //  	for ($j=0; $j < $col; $j++) { 
	   //  		echo "<td>1</td>";
	   //  	}
	   //  	echo "</tr>";
    // 	}
    	
    // }
    // echo "</table>";
    
    ?>

    <table class='table table-dark' border='1' cellpadding='1' cellspacing='0'>
    	<?php for ($i=0; $i < $row; $i++) {?>
    		
    		<?php if($i == 0) {?>
    			<tr>
    				<?php for ($j=0; $j < $col; $j++) { ?>
    				<th>Title <? $j ?></th>
    				<?php } ?>
    			</tr>
    		<?php } ?>
    		
    		<tr>
    			<?php for ($j=0; $j < $col; $j++) { ?>
    				<td>1</td>
    			<?php } ?>
    		</tr>
    	<?php } ?>
    </table>
    
</body>
</html>