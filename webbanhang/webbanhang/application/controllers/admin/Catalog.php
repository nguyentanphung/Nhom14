<?php
class Catalog extends My_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('catalog_model');
		
	}

	//lay ra danh muc san pham
	function index()
	{
		$list=$this->catalog_model->get_list();
		$this->data['list']=$list;

		//lay noi dung cua bien message
		$message=$this->session->flashdata('message');
		$this->data['message']=$message;


		$this->data['temp']='admin/catalog/index';
		$this->load->view('admin/main', $this->data);
	}

	function add()
	{
		//load validatetion du lieu
		$this->load->library('form_validation');
		$this->load->helper('form');

		//neu co du lieu post len thi kiem tra 
		if($this->input->post())
		{
			$this->form_validation->set_rules('name','Tên','required');
			
			//nhap lieu chinh xac
			if($this->form_validation->run())
			{
				//them vao co so du lieu
				$name=$this->input->post('name');
				$parent_id=$this->input->post('parent_id');
				$sort_order=$this->input->post('sort_order');
				//luu du lieu can them vai
				$data=array(
					'name'      => $name,
					'parent_id'  => $parent_id,
					'sort_order'  =>intval($sort_order)
				);
				//them du lieu vao co so du lieu
				if($this->catalog_model->create($data))
				{
					//tao ra noi dung thong bao
					$this->session->set_flashdata("message","Thêm mới dữ liệu thành công");
				}
				else
				{
					$this->session->set_flashdata("message","Thêm mới dữ liệu thất bại");
				}
				//chuyen den trang danh sach quan tri vien
				redirect(admin_url('catalog'));
			}		
		}
		//lay ra cac danh muc cha
		$input=array();
		$input['where']=array('parent_id'=>0);
		$list=$this->catalog_model->get_list($input);
		$this->data['list']=$list;
		$this->data['temp']='admin/catalog/add';
		$this->load->view('admin/main', $this->data);
	}

	//cap nhat du lieu

	function edit()
	{
		//load validatetion du lieu
		$this->load->library('form_validation');
		$this->load->helper('form');
		$id=$this->uri->rsegment(3);
		$info=$this->catalog_model->get_info($id);
		if(!$info)
		{
			//tao ra noi dung thong bao
			$this->session->set_flashdata("message","khong ton tai id tren");
			redirect(admin_url('catalog'));
		}
		$this->data['info']=$info;
		//neu co du lieu post len thi kiem tra 
		if($this->input->post())
		{
			$this->form_validation->set_rules('name','Tên','required');
			
			//nhap lieu chinh xac
			if($this->form_validation->run())
			{
				//them vao co so du lieu
				$name=$this->input->post('name');
				$parent_id=$this->input->post('parent_id');
				$sort_order=$this->input->post('sort_order');
				//luu du lieu can them vai
				$data=array(
					'name'      => $name,
					'parent_id'  => $parent_id,
					'sort_order'  =>intval($sort_order)
				);
				//them du lieu vao co so du lieu
				if($this->catalog_model->update($id,$data))
				{
					//tao ra noi dung thong bao
					$this->session->set_flashdata("message","Thêm mới dữ liệu thành công");
				}
				else
				{
					$this->session->set_flashdata("message","Thêm mới dữ liệu thất bại");
				}
				//chuyen den trang danh sach quan tri vien
				redirect(admin_url('catalog'));
			}		
		}
		//lay ra cac danh muc cha
		$input=array();
		$input['where']=array('parent_id'=>0);
		$list=$this->catalog_model->get_list($input);
		$this->data['list']=$list;
		$this->data['temp']='admin/catalog/edit';
		$this->load->view('admin/main', $this->data);
	}
	function delete()
	{
		//lay id danh muc
		$id=$this->uri->rsegment(3);
		$info=$this->catalog_model->get_info($id);
		if(!$info)
		{
			//tao ra noi dung thong bao
			$this->session->set_flashdata("message","khong ton tai id tren");
			redirect(admin_url('catalog'));
		}
		//xoa du lieu
		$this->catalog_model->delete($id);
		$this->session->set_flashdata("message","Xoa du lieu thanh cong");
		redirect(admin_url('catalog'));

	}
}