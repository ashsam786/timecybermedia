<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Loginagent extends CI_Controller{
	public function __construct(){
		parent::__construct();
		session_start();
		$this->load->helper('url');
	}

	public function index(){
		$this->load->model('agent_model');
		$res = $this->agent_model->login_agent();
		if(is_object($res) && $res->result){
			$_SESSION['agt_id'] = $res->id;
			$_SESSION['agt_eml'] = $res->email;
			$_SESSION['agt_nme'] = $res->fname.' '.$res->lname;
			$_SESSION['agt_phn'] = $res->phone;
			$_SESSION['agt_gml'] = $res->gmail;
			$_SESSION['agt_awd'] = $res->award;

			$data = array('result'=>true,'msg'=>'Login Successful. Please wait.');	
		} else {
			$data = array('result'=>false,'msg'=>$res);
		}
		echo json_encode($data);
	}

	public function logout(){
		unset($_SESSION['agt_id']);
		unset($_SESSION['agt_eml']);
		unset($_SESSION['agt_nme']);
		unset($_SESSION['agt_phn']);
		unset($_SESSION['agt_gml']);
		unset($_SESSION['agt_awd']);
		session_destroy();
		redirect(base_url("agent"));
		//$agent = echo base_url('agent');
		//header("Location:" .$agent);
//die();
	}	
}

// end of file