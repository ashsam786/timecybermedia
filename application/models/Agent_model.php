<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');



class Agent_model extends CI_Model{

	public function __construct(){

		parent::__construct();

		$this->load->database();

	}
         public function index(){
         }
         public function login_agent(){

		$eml = $this->input->post('email');

		$pass = $this->input->post('pass');

		$awd = $this->input->post('award');

		try{

			$qry = $this->db->get_where('agent_info',array('email'=>$eml,'pass'=>$pass));

			if($qry->num_rows() == 1){

				$data = $qry->row();

				$data->result = true;

				$data->award = $awd;

			} else{

				throw new Exception('Incorrect email and/or password');

			}

		} catch(Exception $e) {

			$data = $e->getMessage();

		}

		return $data;

	}
	
	public function insert_agnt_histry($id,$emailTo,$award,$date){
		$data = array('agnt_id'=>$id,'email'=>$emailTo,'award'=>$award,'time'=>$date);
		$this->db->insert('agnt_his', $data);
	}
}
// end of file