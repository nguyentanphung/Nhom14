<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Muser extends CI_Model{
    public function __construct(){
        parent::__construct();
        $this->load->database();
    }
     public function listUser(){
        $this->db->select("id, username, level");
        $query=$this->db->get("user");
        $kq=$query->result_array();
        return $kq;
    }
    public function countAll(){
    	$this->load->model("Muser");
        $config['total_rows'] = $this->Muser->countAll();
        $config['base_url'] = base_url()."page/index";
        $config['per_page'] = 3;
  
        $this->load->library('pagination', $config);
        echo $this->pagination->create_links();
        
	}

}