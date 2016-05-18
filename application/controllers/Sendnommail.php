<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sendnommail extends CI_Controller{
	public function __construct(){
		parent::__construct();
		session_start();
		$this->load->helper(array('url'));
		$this->load->model('agent_model');
		$this->load->helper('date');
		date_default_timezone_set('asia/kolkata');
	}

	public function index(){
		$config = array(
			'protocol' => 'smtp',
			'smtp_host' => SMTP_HOST,
			'smtp_user' => 'timecybermedia',
			'smtp_pass' => 'beetex@815',
			'mailtype'  => 'html',
			'charset'   => 'utf-8'
		);		
		var_dump($config);
		$this->load->library('email',$config);		
		$emailTo = htmlspecialchars($_POST['email']);
				
		$award = $_SESSION['agt_awd'];
		switch($award){
			case 'Lifestyle':
				$sub = 'Global Lifestyle Awards 2015';
				$file = 'lifestyle';
			break;
			case 'Healthcare':
				$sub = 'Global Healthcare Excellence Awards 2015';
				$file = 'healthcare';
			break;
			case 'Dental':
				$sub = 'Nationa Dental Excellence Awards 2015';
				$file = 'dental';
			break;
			case 'Education':
				$sub = 'Global Education Excellence Awards 2016';
				$file = 'education';
			break;	
			case 'Business':
				$sub = 'Global Business & Leadership Awards 2015';
				$file = 'business';
			break;			
		}
		$body = $this->load->view('mailers/'.$file,null,TRUE);
		$body= preg_replace("/{\}/",'',$body);
		$body = str_replace ('%sender%',$_SESSION['agt_nme'],$body);
		$body = str_replace ('%sender_email%',$_SESSION['agt_eml'],$body);
		$body = str_replace ('%contact%',$_SESSION['agt_phn'],$body);
		
		$this->email->from($_SESSION['agt_eml'], 'Prime Time');
		$this->email->to($emailTo);
		//$this->email->cc('');
		//$this->email->bcc('');

		$this->email->subject($sub);
		$this->email->message($body);
		$date = date('Y-m-d h:i:a',time());
		try{
			if($this->email->send()){
				$this->agent_model->insert_agnt_histry($_SESSION['agt_id'],$emailTo,$award,$date);
				$data = array('result'=>true,'msg'=>'Mail send successfully','email'=>$emailTo,'date'=>$date,'award'=>$award);
			} else {
				throw new Exception('Mail sending failed. Check email id or try again later');
			}
		} catch(Exception $e){
			$data = array('result'=>false, 'msg'=>$e->getMessage());
		}
		echo json_encode($data);
	}
}
// end of file