<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Staff extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Staff_model");
		$this->load->library("encryption");
		$this->load->helper("form");
		  $this->load->helper('url_helper');
		  $this->load->library("session");
	}
	
	
	public function addData(){
		if(isset($_POST['addData'])){
//			echo "Hi";
			extract($_POST);
			$user_id = $this->session->userdata('user_id');	
			$data = array(
				'user_id' => $user_id,
				'staff_first_name' => $staff_first_name,
				'staff_middle_name' => $staff_middle_name,
				'staff_last_name' => $staff_last_name,
				'staff_number' => $staff_number,
				'staff_designation_id' => $staff_designation_id,
				'staff_dept_id' => $staff_dept_id,
				'staff_gender' => $staff_gender,
				'staff_dob' => $staff_dob,
				'staff_designation_id' => $staff_designation_id,
                'is_teaching_staff' => $is_teaching_staff
                
			);
			
		
			
			$this->Staff_model->addStaffDetail($data);
			$this->Staff_model->updateStaffRegister($user_id);
			
			//REDIRECT TO DASHBOARD
			header("Location: ../dashboard/show");
			
		}
	}
	
}//end of login class here!!

?>