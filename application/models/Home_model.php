<?php
class Home_model extends CI_Model {
	private $category;
	private $cat_id;

	public function __construct() {
		parent::__construct();
		$this->load->database();
		$this->load->helper('directory');
	}
	public function get_cat_id($cat){
		$this->db->where('cat_title', $cat);
		$qry = $this->db->get('awd_catgry');
		$data = $qry->result();
		return $data[0]->cat_id;
		
	}
	public function get_current_awd() //get Current Award
	{
		$qry = $this->db->query('SELECT * FROM `awd_list` WHERE `awd_date` > now() order by awd_id ');
		$data = $qry->result();
		//$count = $qry->num_rows();
		/*if($count == 0)
			{
				$data = array('result'=>false,'msg'=>'No Event');
			}
			else 
			{
				$nxtev = $qry->result();
				$data = array('result'=>true,'msg'=>$nxtev);
				
			}
		*/
		
		return $data;
		
		
	}
	public function abt_us()
	{
		$qry = $this->db->get_where('about',array('page'=>'home'));
		$data = $qry->result();
		return $data;
	}
	public function get_service(){
		$qry = $this->db->get('ptrm_services');
		$data = $qry->result();
		return $data;
		
	}
	
	
}?>