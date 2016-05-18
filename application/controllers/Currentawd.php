<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Currentawd extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('home_model');
		
	}
	public function index(){
		
		$post = $this->home_model->get_current_awd();
		if(!empty($post))
		{
			$data = array('result'=>true,'msg'=>$post);
		echo json_encode($data);
	}
	else
	{
		$data = array('result'=>true,'msg'=>'no Event');
		echo json_encode($data);
	}
	}
}