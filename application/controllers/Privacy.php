<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Privacy extends CI_Controller{

	public function index($option = 'home'){
		$this->load->helper('url');
		//$this->output->cache(60);  // cache the output results for 60 minutes
$this->load->model('cms_model');
$data['cms'] = $this->cms_model->get_meta_data('privacy');	
		if(empty($data)){
			show_404();
		}
		$data['title'] = "Privacy Policy";
		$this->load->view('template/header',$data);
		$this->load->view('privacy',$data);
		$this->load->view('template/footer',$data);
	}
}
// end of file