<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller
{
    
    public function load_form()
    {

      	$this->load->model('news_model');
      	$data['page_title'] = $this->news_model->getList();
        $this->load->view('login_view', $data);

    }
}