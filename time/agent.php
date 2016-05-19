<?php  if(!isset($_SESSION)){ session_start(); } 
if(isset($_SESSION['agent']) AND !empty($_SESSION['agent'])){
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
		require_once('db.php');

		$email = $_POST['email'];
		$pass = $_POST['pass'];
		try {
			$sql = 'SELECT * FROM agent WHERE email = :email AND pass = :pass';
			$sth = $db->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
			$sth->execute(array(':email' => $email, ':pass' => $pass));
			$data = $sth->fetchAll();

			if(count($data) != 1){
				$response = false;
				$msg[] = 'Please enter valid email id and password';
			} else{ 
				$d = $data[0];
				$_SESSION['agent'] = $d['name'];
				$_SESSION['email'] = $d['email'];
				$_SESSION['agent_id'] = $d['id'];					
				header('Location: sendnomination.php');
			}
    } catch (PDOException $e) {
		$response = false;
		$msg[] = 'Something went wrong. Please try again';
    }
	$db = null;
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

  <section id="agent-login">
        <div class="container">
            <div class="center">        
                <h2>Agent Login Form</h2>
                <p class="lead"></p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="agentLogin" class="contact-form" name="agentLogin" method="post" action="">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Email: *</label>
                            <input type="email" name="email" id="email" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Password *</label>
                            <input type="password" name="pass" id="pass" class="form-control" required="required">
                        </div>
                    </div>
                    <div class="col-sm-11 col-sm-offset-1">
                        <div class="form-group">
                            <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>
                        </div>
                    </div>
                </form> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#agent-login-page-->



<?php 
require_once('footer.php');
?>