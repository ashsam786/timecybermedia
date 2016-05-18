<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends CI_Controller{
	// get all news for home page
	public function index(){
		//$this->output->cache(60);  // cache the output results for 60 minutes
		//$data['award'] = $this->home_model->get_home_awd_List();
		$this->load->helper('url');
		$this->load->model('cms_model');
		$data['cms'] = $this->cms_model->get_meta_data('contact');
		if(empty($data)){
			show_404();
		}
	
		$data['title'] = "Contact Us";
		$this->load->view('template/header',$data);
		$this->load->view('contact',$data);
		$this->load->view('template/footer',$data);
	}
	public function detail()
	{
date_default_timezone_set("Asia/Calcutta");		
        $name = $this->input->post('name',true);
		$email = $this->input->post('email',true);
		$tel = $this->input->post('tel',true);
		$msg = $this->input->post('message',true);
		
		$config = array(
			'protocol' => 'smtp',
			'smtp_host' => SMTP_HOST,
			'smtp_user' => 'timecybermedia',
			'smtp_pass' => 'beetex@815',
			'mailtype'  => 'html',
			'charset'   => 'utf-8'
		);		
		
		$this->load->library('email',$config);	
		$body = '<html><div>Name: '.$name.'<br/> Email: '.$email.' <br/> Phone: '.$tel.' <br/>Message:  '.$msg.'</div><html>';
		$this->email->from('noreply@timecybermedia.com');
		$this->email->to('info@timecybermedia.com'); 
		

		$this->email->subject('Contact Us');
		$this->email->message($body);	
		try{
			if($this->email->send()){
				$data = array('result'=>true,'msg'=>'Mail send successfully');
			} 
			else {
				throw new Exception('Mail sending failed. Check email id or try again later');
			}
		} catch(Exception $e){
			$data = array('result'=>false, 'msg'=>$e->getMessage());
		}
		
		echo json_encode($data);
	}
}
// end of file