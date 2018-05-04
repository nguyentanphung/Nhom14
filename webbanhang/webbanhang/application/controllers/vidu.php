<?php
class Vidu extends My_Controller
{
	 function __construct()
    {
        parent::__construct();
        $this->load->library('cart');
        
    }
	function index()
	{
		//lay danh sach slide 
		
		
		$this->data['temp']='site/vidu/index';
		$this->load->view('site/layout', $this->data);
	}
}