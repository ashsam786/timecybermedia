<?php
session_start();

if(!isset($_SESSION['email']) || empty($_SESSION['email'])){
	header('Location: agent.php');
}else{
	
/* $email = $_SESSION['email'];
$name = $_SESSION['agent']; */
?>	

<form id="sndNomForm" method="post" action="">
	<fieldset>
		<legend>Send Nomination</legend>
		Client Name: <input type="text" name="cName" id="cName">
		Client Email: <input type="email" name="cEmail" id="cEmail">
		<!--input type="hidden" name="senderEmail" value="<?php echo $email ?>">
		<input type="hidden" name="senderName" value="<?php echo $name ?>"-->
		<input type="submit">
	</fieldset>	
</form>


<?php		
	require_once('footer.php');
}
?>