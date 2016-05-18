<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Aboutus extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('cms_model');
		$data['cms'] = $this->cms_model->get_meta_data('aboutus');	
	}
	// get all news for home page
	public function index(){
		

		$data['title'] = "About US";
		$this->load->view('template/header',$data);
		$this->load->view('aboutus',$data);
		$this->load->view('template/footer',$data);
	}
}
// end of file