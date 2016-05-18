<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Agent extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('agent_model');
$this->load->model('cms_model');
$this->load->helper('url');
		session_start();
	}

	public function login(){
		$this->load->view('template/header',$data);
		$this->load->view('agent',$data);
		$this->load->view('template/footer',$data);
	}
	
	public function index(){
		//$this->output->cache(60);  // cache the output results for 60 minutes
		$data['cms'] = $this->cms_model->get_meta_data('agent');	
		$data['title'] = "Agent mailer";

		$this->load->view('template/header',$data);
		if(isset($_SESSION['agt_eml'])){
			$this->load->view('agent',$data);
		} else {
			$this->load->view('agentLogin',$data);
		}		
		$this->load->view('template/footer',$data);		
	}
}
// end of file