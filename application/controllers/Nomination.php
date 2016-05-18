<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nomination extends CI_Controller{
	
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('home_model');
$this->load->model('cms_model');
	}
	// get all news for home page
	public function index(){
//		$this->output->cache(60);  // cache the output results for 60 minutes
		$data['cms'] = $this->cms_model->get_meta_data('nomination');
		$data['category'] = $this->uri->segment(1);
		$arr = array('business','healthcare','dental','education','lifestyle');
		if(!in_array($data['category'], $arr)){
			show_404();
		}	
		$data['title'] =  $data['category'].' - Nomination form';
		//$data['content'] = $this->fb_data->get_album_photos($data['album_id'],$direction,$page);
				
		$this->load->view('template/header',$data);
		$this->load->view('nomination',$data);
		$this->load->view('template/footer',$data);
	}
}
// end of file