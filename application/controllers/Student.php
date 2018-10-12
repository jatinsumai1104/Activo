<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Student extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Student_model");
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
				'student_first_name' => $student_first_name,
				'student_middle_name' => $student_middle_name,
				'student_last_name' => $student_last_name,
				'student_number' => $student_number,
				'student_dept_id' =>$student_dept_id,
				'student_gender' => $student_gender,
				'student_dob' => $student_dob,
				'student_passout_year' => $student_passout_year
			);
			
			$this->Student_model->addStudentDetail($data);
			$this->Student_model->updateStudentRegister($user_id);
			
			//REDIRECT TO DASHBOARD
			header("Location: ../dashboard/show");
			
		}
	}
	
}//end of login class here!!

?>