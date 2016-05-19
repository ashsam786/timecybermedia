<?php 
session_start();
if(isset($_SESSION['email']) AND !empty($_SESSION['email'])){
	header('Location: sendnomination.php');
}

if(isset($_POST['email'])){
	$response = true;
	$msg = array();
	if(empty($_POST['email'])){
		$msg[] = 'Please enter email id';
		$response = false;
	}
	
	if(empty($_POST['email'])){
		$msg[] = 'Password cannot be empty'; 
		$response = false;
	}
	
	if($response){
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "timecybermedia";
		
		$email = $_POST['email'];
		$pass = $_POST['pass'];
		
		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
			// set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			
			$sql = 'SELECT * FROM agent WHERE email = :email AND pass = :pass';
			$sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
			$sth->execute(array(':email' => $email, ':pass' => $pass));
			$data = $sth->fetchAll();
			
			if(count($data) != 1){
				$response = false;
				$msg[] = 'Please enter valid email id and password';
			} else{ 
				$d = $data[0];
				$_SESSION['agent'] = $d['name'];
				$_SESSION['email'] = $d['email'];
				header('Location: sendnomination.php');
			}
    } catch (PDOException $e) {
		$response = false;
		$msg[] = 'Something went wrong. Please try again';
    }
	$conn = null;
	}
}



require_once('header.php');


// display error messages
if(isset($response) AND $response == false and !empty($msg)){
	foreach($msg as $m){
		echo $m. '<br>';
	}
}
?>
<form method="post" action="">
	<fieldset>
		<legend>Agent Login</legend>
		Email: <input type="text" name="email" id="email">
		Password: <input type="password" name="pass" id="pass">
		<input type="submit">
	</fieldset>	
</form>
<?php 
require_once('footer.php');
?>