<?php 
 if(!isset($_SESSION)){ session_start(); } 

function sendMail($senderEmail, $senderName, $recieverEmail, $recieverName, $replyEmail, $replyName = ''){
	require 'vendor/phpmailer/phpmailer/PHPMailerAutoload.php';
	
	$mail = new PHPMailer;
	$mail->SMTPDebug = 3;                               // Enable verbose debug output

	$mail->isSMTP();                                      // Set mailer to use SMTP
	//$mail->Host = 'smtp1.example.com;smtp2.example.com';  // Specify main and backup SMTP servers
	//$mail->SMTPAuth = true;                               // Enable SMTP authentication
	//$mail->Username = 'user@example.com';                 // SMTP username
	//$mail->Password = 'secret';                           // SMTP password
	//$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
	//$mail->Port = 587;                                    // TCP port to connect to

	$mail->setFrom($senderEmail, $senderName);
	$mail->addAddress($recieverEmail, $recieverName);     // Add a recipient  Name is optional
	$mail->addReplyTo($replyEmail, $replyName);
	//$mail->addCC('cc@example.com');
	//$mail->addBCC('bcc@example.com');

	//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
	//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
	$mail->isHTML(true);                                  // Set email format to HTML

	$mail->Subject = 'Here is the subject';
	$message = 'This is the HTML message body <b>in bold!</b>';
	$mail->Body    = $message;
	$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

	if(!$mail->send()) {
		$data = array('result' => false, 'msg' => $mail->ErrorInfo);
		return $data;
	} else {
		$data = array('result' => true);
		return $data;
	}		
}

if(!isset($_SESSION['agent']) || empty($_SESSION['agent'])){
    header('Location: agent.php');
}

if(isset($_POST)){
    try{
	$clientEmail = $_POST['cEmail'];
	$clientName = $_POST['cName'];
	$senderEmail = $_SESSION['email'];
	$senderName = $_SESSION['agent'];
	$agentId = $_SESSION['agent_id'];		
	$replyEmail = 'amirprimetime@gmail.com';
	
	if(!isset($clientEmail) || empty($clientEmail)){
		throw new Exception('Email cannot be empty');
	}
//	if($data = sendMail($senderEmail, $senderName, $clientEmail, $clientName, $replyEmail)){
if(true){
		require_once('db.php');

		$time = time(); // time at which nomination is send

		$stmt = $db->prepare("INSERT INTO nomHistory (agent_id, send_to, time) VALUES (:agent_id, :client_email, :time)");
		$stmt->bindParam(':agent_id', $agentId);
		$stmt->bindParam(':client_email', $clientEmail);
		$stmt->bindParam(':time', $time);

		$stmt->execute();

	} else {
		throw new Exception('Mail send failed. Please try again.');
	}
    } catch(Exception $e){
	$data = array('result' => false, 'msg' => $e->getMessage());
    }
    echo json_encode($data);
} else{
	header('Location: sendnomination.php');
}
?>
