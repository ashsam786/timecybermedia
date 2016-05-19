<?php

echo '<pre>'; print_r($_POST); die;

if(isset($_SESSION['agent']) AND !empty($_SESSION['agent'])){
	unset($_SESSION['agent']);
	unset($_SESSION['email']);
	unset($_SESSION['agent_id']);
	session_destroy();

	header('Location: /index.php');
} else{
	header('Location: /index.php');
}
?>
