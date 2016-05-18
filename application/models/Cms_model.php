<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cms_model extends CI_Model {
	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function get_meta_data($page){
		$where = array('pge_nme' => $page);
		$qry = $this->db->get_where('cms',$where);
		
		if($qry->num_rows() != 1) { return null; }
		return $qry->row_array();
	}
}