<?php
class Admin extends My_Controller
{
	//load model o ham khoi tao ,cac ham sau khong can load nua 
	function __construct()
	{
		parent::__construct();
		$this->load->model('admin_model');
		$this->load->library("session");
	}
	// ham them du lieu
	/*function create()
	{
		//$this->load->model('admin_model');
		$data=array();
		$data['username']='Phungnt';
		$data['password']='1';
		$data['name']='Nguyen Tan Phung';
		if($this->admin_model->create($data))
		{
			echo "ban da them thanh cong";
		}
		else
		{
			echo "Ban them that bai";
		}
	}
	function update()
	{
		//$this->load->model('admin_model');
		$id='8';
		$data=array();
		$data['username']='ntp';
		$data['password']='2';
		$data['name']='Nguyen Tan Phung';
		if($this->admin_model->update($id, $data))
		{
			echo "Ban da cap nhap thanh cong";
		}
		else
		{
			echo "Ban da cap nhap khong thanh cong roi nhe";
		}
	}
	function delete()
	{
		$id='8';
		if($this->admin_model->delete($id))
		{
			echo "Ban da xoa thanh cong";
		}else
		{
			echo "Ban xoa khong thanh cong";
		}
	}
	function get_info()
	{
		$id='1';
		$info=$this->admin_model->get_info($id,'username,password');//chi lay ra 2 cot la username va password
		echo '<pre>';
		print_r($info);
	}
	function get_list()
	{
		$input=array();
		//$input['where'] = array('id' => 1); //lay ra theo dieu kien where id=1
		//$input['order']=array('id','ASC');
		//$input['limit']=array(1,0);
		$input['like']=array('username','admin');
		$list=$this->admin_model->get_list($input);
		echo "<pre>";
		print_r($list);
	}
	*/
	//lay danh sach admin
	function index()
	{
		$input=array();
		$list=$this->admin_model->get_list($input);
		$this->data['list']=$list;

		$total=$this->admin_model->get_total();
		$this->data['total']=$total;
		
		//lay noi dung cua bien message
		$message=$this->session->flashdata('message');
		$this->data['message']=$message;

		$this->data['temp']='admin/admin/index';
		$this->load->view('admin/main', $this->data);
	}
	//kiem tra username da ton tai hay chua
	function check_username()
	{
		$username=$this->input->post('username');
		$where = array('username' => $username);
		//kiem tra xem username da ton tai chua
		if($this->admin_model->check_exists($where))
		{
			//tra ve thong bao loi
			$this->form_validation->set_message(__FUNCTION__,'Tên Người dùng đã tồn tại ');
			return false;
		}
		else
			return true;
	}
	//them moi quan tri vien
	function add()
	{
		$this->load->library('form_validation');
		$this->load->helper('form');

		//neu co du lieu post len thi kiem tra 
		if($this->input->post())
		{
			$this->form_validation->set_rules('name','Tên','required');
			$this->form_validation->set_rules('username','Tài Khoản Đăng Nhập','required|callback_check_username');
			$this->form_validation->set_rules('password','Mật Khẩu','required');
			$this->form_validation->set_rules('re_password','Nhập Lại mật khẩu','matches[password]');	
			//nhap lieu chinh xac
			if($this->form_validation->run())
			{
				//them vao co so du lieu
				$name=$this->input->post('name');
				$username=$this->input->post('username');
				$password=$this->input->post('password');

				$data=array(
					'name'      => $name,
					'username'  => $username,
					'password'  =>md5($password)
				);
				if($this->admin_model->create($data))
				{
					//tao ra noi dung thong bao
					$this->session->set_flashdata("flash_message","Thêm mới dữ liệu thành công");
				}
				else
				{
					$this->session->set_flashdata("flash_message","Thêm mới dữ liệu thất bại");
				}
				//chuyen den trang danh sach quan tri vien
				redirect(admin_url('admin'));
			}		
		}
		$this->data['temp']='admin/admin/add';
		$this->load->view('admin/main', $this->data);
	}
	//ham chinh sua thong tin quan tri vien
	function edit()
	{
		//hien loi cho form
		$this->load->library('form_validation');
		$this->load->helper('form');
		//lay ra phan doan thu 3 trong thanh dia chi (lay id cua quan tri vien)
		$id=$this->uri->rsegment('3');
		$id=intval($id);
		//lay thong tin cua quan tri vien
		$info=$this->admin_model->get_info($id);
		if(!$info)
		{

			redirect(admin_url('admin'));
		}
		$this->data['info']=$info;

		if($this->input->post())
		{
			$this->form_validation->set_rules('name','Tên','required');
			$this->form_validation->set_rules('username','Tài Khoản Đăng Nhập','required|callback_check_username');

			$password=$this->input->post();
			if($password)
			{
				$this->form_validation->set_rules('password','Mật Khẩu','required');
				$this->form_validation->set_rules('re_password','Nhập Lại mật khẩu','matches[password]');	
			}
			if($this->form_validation->run())
			{
				//them vao co so du lieu
				$name=$this->input->post('name');
				$username=$this->input->post('username');
				$password=$this->input->post('password');
				$data=array(
					'name'      => $name,
					'username'  => $username,
					'password'  =>md5($password)
				);
				//neu ma thay doi mat khau thi moi gan du lieu
				
				if($this->admin_model->update($id,$data))
				{
					//tao ra noi dung thong bao
					$this->session->set_flashdata("flash_message","cap nhat dữ liệu thành công");
				}
				else
				{
					$this->session->set_flashdata("flash_message","cap nhap dữ liệu thất bại");
				}
				//chuyen den trang danh sach quan tri vien
				redirect(admin_url('admin'));
			}
		}
		$this->data['temp']='admin/admin/edit';
		$this->load->view('admin/main', $this->data);
	}

	//delelete
	function delete()
	{
		//lay ra phan doan thu 3 trong thanh dia chi (lay id cua quan tri vien)
		$id=$this->uri->rsegment('3');
		$id=intval($id);
		//lay thong tin cua quan tri vien
		$info=$this->admin_model->get_info($id);
		if(!$info)
		{
			$this->session->set_flashdata("message","khong ton tai quan tri vien");
			redirect(admin_url('admin'));
		}		
		$this->admin_model->delete($id);
		$this->session->set_flashdata("message","Xoa Thanh Cong");
		redirect(admin_url('admin'));

	}
	function logout()
	{
		if($this->session->userdata('login'))
		{
			$this->session->unset_userdata('login');
		}
		redirect(admin_url('login'));
	}
}