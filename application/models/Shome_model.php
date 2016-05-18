<?php
class Shome_model extends CI_Model {
	//private $category;
	//private $cat_id;

	public function __construct() {
		parent::__construct();
		$this->load->database();
		$this->load->helper('directory');
		$this->load->model('home_model');
		$this->load->model('shome_model');
		
		$this->category = $this->uri->segment(1);
		
		$this->cat_id = $this->home_model->get_cat_id($this->category);
	
		
	}

	public function get_awdlst()	
	{
		$qury = $this->db->query('SELECT * FROM `awd_list` WHERE `awd_date` > now() ORDER BY awd_id');
		$rcount = $qury->num_rows();
		//var_dump($rcount);
	
			if($rcount == 0)
			{
				$data = array('result'=>false,'msg'=>'No Event');
			}
			else 
			{
				$nxtev = $qury->result();
				$data = array('result'=>true,'msg'=>$nxtev);
				
			}
		return $data;
		}
	 public function get_awd_abut()
	 {
		$this->db->where('awd_cat',$this->cat_id);
		 $qury = $this->db->get('about');
		 $data = $qury->result();
		return $data;
	 }
	 
	}
?>