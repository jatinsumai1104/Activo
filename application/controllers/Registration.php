<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Registration extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Login_model");
		$this->load->library("encryption");
		$this->load->helper("form");
		$this->load->library("session");
		$this->load->model('Student_model');
        $this->load->model('Staff_model');
	}
	
	public function show(){
		//echo $this->session->userdata('user_id');
		//echo $this->session->userdata('user_email');
		if($this->session->userdata('user_role_id')==4 ){
			$data['title']="Registration || Activo";
			$data['page']="Regitration Student";
			$depts = $this->Student_model->getDept();
			$data['dept'] = $depts;
			$this->load->view("includes/header",$data);
			$this->load->view("registration_forms/student_register_docs",$data);
			$this->load->view("includes/footer",$data);
		}
       else if($this->session->userdata('user_role_id')==2 ||  $this->session->userdata('user_role_id')== 6){
          $data['title']="Registration || Activo";
          $data['page']="Registration || Student";
          $depts = $this->Student_model->getDept();
			$data['dept'] = $depts;
          $roles = $this->Staff_model->getRoles();
          $designations= $this->Staff_model->getDesignation();
          $data['role']=$roles;
          $data['designation']=$designations;
          $this->load->view("includes/header",$data);
          $this->load->view("registration_forms/staff_register_docs",$data);
          $this->load->view("includes/footer",$data);
       }
	}
}
?>