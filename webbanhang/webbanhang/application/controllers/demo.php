<?php
class Demo extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->library("session");
    }
  
    public function index(){
  		$this->session->set_userdata("ten", "gia tri");
  		$xuat=$this->session->userdata("ten");
  		echo $xuat;
    }
}