<?php 
Class Login extends My_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library("session");
	}
	function index()
	{
		$this->load->library('form_validation');
		$this->load->helper('form');
		if($this->input->post())
		{
			$this->form_validation->set_rules('login','login', 'callback_check_login');
			if($this->form_validation->run())
			{
				$this->session->set_userdata("login","hahahahhahahahaha");
				
				redirect(admin_url('home'));
			}
		}
		$this->load->view('admin/login/index');
	}
	//kiem tra user name va password co chinh xac khong
	function check_login()
	{
		$username=$this->input->post('username');
		$password=$this->input->post('password');
		$password=md5($password);

		$this->load->model('admin_model');
		$where = array('username' => $username, 'password' => $password);
		if($this->admin_model->check_exists($where))
		{
			return true;
		}
		
		$this->form_validation->set_message(__FUNCTION__ , 'đăng nhập không thanh công ');
		return false;
		
	}



}