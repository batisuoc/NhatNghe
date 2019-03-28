<?php

if(isset($_POST['email']) && isset($_POST['pass'])) {
	echo "Welcome ".$_POST['email']." to our website<br>";
	echo "Your password is ".$_POST['pass'];
} else {
	echo "I don't know you , get out !!!";
}

?>