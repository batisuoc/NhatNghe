<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Table</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-grid.min.css">
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-reboot.css">
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
    <script src="../boostrap/js/bootstrap.bundle.js"></script>
    <script src="../boostrap/js/bootstrap.bundle.min.js"></script>
    <script src="../boostrap/js/bootstrap.js"></script>
    <script src="../boostrap/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- <table class="table table-dark"></table> -->
    <?php

    if(isset($_POST['row']) && isset($_POST['column']) && isset($_POST['printTable'])) {
        $row = (int)$_POST['row'];
        $col = (int)$_POST['column'];
    }
    else {
        echo 'Du lieu chua nhan duoc.';
    }
    
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