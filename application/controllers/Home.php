<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	

	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('home_model');
		
		
	}
	
	public function index()
		{
			//$this->load->view('template/header');
		$data['abtus'] = $this->home_model->abt_us();
		$data['service'] = $this->home_model->get_service();
		
		//$cat_id = $this->home_model->get_cat_id($cat);
		
		
		$data['curtAwd']= $this->home_model->get_current_awd();
		//var_dump($data['curtAwd']);
		
		//$data = $this->home_model->get_current_awd();
	
			$this->load->view('home',$data);
			//$this->load->view('template/footer');
		}
}
