<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Services extends CI_Controller{

	public function index($option = 'home'){
		$this->load->helper('url');
//		$this->output->cache(60);  // cache the output results for 60 minutes
		$this->load->model('cms_model');
		$data['cms'] = $this->cms_model->get_meta_data('services');
		if(empty($data)){
			show_404();
		}

		$data['title'] = "Our Services";
		$this->load->view('template/header',$data);
		$this->load->view('services',$data);
		$this->load->view('template/footer',$data);
	}
}
// end of file