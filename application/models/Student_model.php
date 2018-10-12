<?php
class Student_model extends CI_Model{

    //function to load the database
    //similar to view method of defalut contoller
    public function __construct()
    {
        $this->load->database();
    }
	
	public function addStudentDetail($data){
		date_default_timezone_set("Asia/Kolkata");
        $time = time();
        $created_at = date("Y-m-d H:i:s", $time);
        $data_meta = array(
            'created_at'=>$created_at,
			'updated_at'=>$created_at,
            'is_deleted'=> 0
        );
        $data  = array_merge($data,$data_meta);
		
		$user_query = $this->db->insert("student",$data);
		return $this->db->insert_id();
		
	}
	
	public function updateStudentRegister($user_id){
		$query = "UPDATE users SET is_fully_registered = 1 where user_id = $user_id";
		echo $query; 
		$this->db->query($query);
	}
	
	
	public function getDept(){
		$query = "SELECT * FROM dept";
		$result_array = $this->db->query($query);
		return $result_array;
	}
	
}
?>