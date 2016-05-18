<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shome extends CI_Controller {


	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('shome_model');
		
		
	}
	
	public function index()
		{
			$awd_cat = $this->uri->segment(1);
			$data['nxtawd'] = $this->shome_model->get_awdlst();
			//var_dump($data['nxtawd']);
			
			$data['about'] = $this->shome_model->get_awd_abut();
			//$data['patrons'] = $this->shome_model->get_awd_patrons();
			if(empty($data)){
			show_404();
		}
			$this->load->view('template/sheader',$data);
			//var_dump($awd_cat);
			$this->load->view('shome',$data);
			$this->load->view('template/sfooter');
		}
}
