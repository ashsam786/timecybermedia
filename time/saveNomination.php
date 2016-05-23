<?php
  echo json_encode($_POST); die;
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

  
  
try{
    if(!isset($_POST) || !empty($_POST)){
        header('Location: index.php');
    }
    
    if(!isset($_POST['tnc']) || empty($_POST['tnc'])){
        throw new Exception('Please select terms and conditions checkbox');
    }
    
    $formData = [];
    if(empty($_POST['nomType'])){
        throw new Exception('Please select nomination type');
    }
    
    if($_POST['nomType'] == 'individual'){
        if(empty($_POST["nName"]) || empty($_POST["nEmail"]) || empty($_POST["nMobile"]) || empty($_POST["cpName"]) || empty($_POST["agent"])){
            throw new Exception('Fields marked with * cannot be left blank.');
        }        
    }
    
    if($_POST['nomType'] == 'organization'){
        if(empty($_POST["orgName"]) || empty($_POST["orgEmail"]) || empty($_POST["orgMobile"]) || empty($_POST["cpName"]) || empty($_POST["agent"])){
            throw new Exception('Fields marked with * cannot be left blank.');
        } else{
            $_POST["nName"]   = $_POST["orgName"];
            $_POST["nEmail"]  = $_POST["orgEmail"];
            $_POST["nMobile"] = $_POST["orgMobile"];
        }        
    }    
        
    
    $formData["nName"]          = htmlspecialchars($_POST["nName"]);
    $formData["nEmail"]         = htmlspecialchars($_POST["nEmail"]);
    $formData["nLandline"]      = htmlspecialchars($_POST["nLandline"]);
    $formData["nMobile"]        = htmlspecialchars($_POST["nMobile"]);
    $formData["cpName"]         = htmlspecialchars($_POST["cpName"]);
    $formData["cpEmail"]        = htmlspecialchars($_POST["cpEmail"]);
    $formData["cpMobile"]       = htmlspecialchars($_POST["cpMobile"]);    
    $formData["cpLandline"]     = htmlspecialchars($_POST["cpLandline"]);
    $formData["category"]       = htmlspecialchars($_POST["category"]);
    $formData["subCategory"]    = htmlspecialchars($_POST["subCategory"]);
    $formData["nDesignation"]   = htmlspecialchars($_POST["nDesignation"]);
    $formData["nLevel"]         = htmlspecialchars($_POST["nLevel"]);         
    $formData["nPevAwards"]     = htmlspecialchars($_POST["nPevAwards"]);
    $formData["city"]           = htmlspecialchars($_POST["city"]);
    $formData["pincode"]        = htmlspecialchars($_POST["pincode"]);
    $formData["turnover"]       = htmlspecialchars($_POST["turnover"]);
    $formData["agent"]          = htmlspecialchars($_POST["agent"]);
    $formData["howKnow"]        = htmlspecialchars($_POST["howKnow"]);
    $formData["comments"]       = htmlspecialchars($_POST["comments"]);
    $formData["nPevAccredations"] = htmlspecialchars($_POST["nPevAccredations"]);
    $formData["streetAdd"]      = htmlspecialchars($_POST["streetAdd"]);
    $formData["state"]          = htmlspecialchars($_POST["state"]);
    $formData["yInception"]     = htmlspecialchars($_POST["yInception"]);
    $formData["products"]       = htmlspecialchars($_POST["products"]);
    
    $formData["submittedAt"]    = time();
    $formData["userIp"]         = $_SERVER['REMOTE_ADDR'];
   
    require_once('db.php');

    $stmt = $db->prepare("INSERT INTO nominations (nEmail, nLandline, nMobile, cpName, cpEmail, cpMobile, cpLandline, category, subCategory, nDesignation, nLevel, nPevAwards, city, pincode, turnover, agent, howKnow, comments, nPevAccredations, streetAdd, state, yInception, products, submittedAt, userIp, nName) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);


    if($stmt->execute()){
       // sendMailtoAgent($formData);
          $data = arrray('result' => true, 'msg' => 'Nomination filed successfully');
    } else{
        throw new Exception('Error occured. Please try after some time');
    }
} catch(Exception $e){
    $data = array('result' => false, 'masg' => $e->getMessage());
} 

echo json_encode($data);
        
        
        
        
        