<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Load_agnt_histry extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('agent_model');
	}

	public function index(){
//		$this->output->cache(60);  // cache the output results for 60 minutes
		try{
			if(isset($_POST['agntId'])){
				$qry = $this->agent_model->get_agnt_history();
				echo json_encode($qry);
			} else {
				throw new Exception('Post request error');
			}
		} catch(Exception $e){
			$qry = array('result'=>false, 'msg'=>$e->getMessage());
			echo json_encode($qry);
		}
	}
}
// end of file