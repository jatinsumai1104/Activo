<?php

    class Staff_model extends CI_Model{
        public function __construct(){
           $this->load->database(); 
        }
        
        //function to get all the data from db
        
        public function addStaffDetail($data){
            date_default_timezone_set("Asia/Kolkata");
            $time = time();
            $created_at = date("Y-m-d H:i:s", $time);
        $data_meta = array(
            'created_at'=>$created_at,
			'updated_at'=>$created_at,
            'is_deleted'=> 0
        );
            
            $data = array_merge($data,$data_meta);
            
            $user_query = $this->db->insert("staff",$data);
            return $this->db->insert_id();
        }
        
        public function updateStaffRegister($user_id){
		$query = "UPDATE users SET is_fully_registered = 1 where user_id = $user_id";
		echo $query;
		$this->db->query($query);
	}
     
    public function getDept(){
		$query = "SELECT * FROM dept";
		$result_array = $this->db->query($query);
		return $result_array;
	}
        
    public function getRoles(){
        $query = "SELECT * FROM user_roles";
        $result_array = $this->db->query($query);
        return $result_array;
    }
        
        public function getDesignation(){
            $query = "SELECT * FROM designation";
            $result_array = $this->db->query($query);
        return $result_array;
        }
        
        
        
        
        
    }