<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model("Login_model");
		$this->load->library("encryption");
		$this->load->helper("form");
		  $this->load->helper('url_helper');
		  $this->load->library("session");
	}

	public function show(){
		$data['current_user']=$this->session->userdata('user_role_id');
		// if($this->session->userdata('user_role_id')==6){
		// 	header("Location: ../request/loadPage");
		// }
		// else{
		 	//add profile views if you want to show differnt profile views for different user roles
		$notis=$this->Login_model->getRequestsForNotifications($this->session->userdata('user_id'));

		$details=$this->Login_model->getUserInfo($this->session->userdata('user_id'),$this->session->userdata('user_role_id'));

		$name=$details;

		$user=$this->Login_model->getUser('user_id',$this->session->userdata('user_id'));

		$data['requests']=implode($this->Login_model->getRequests($this->session->userdata('user_id')));
		$data['requests_pending']=implode($this->Login_model->getRequestsPending($this->session->userdata('user_id')));
		$data['requests_approved']=implode($this->Login_model->getRequestsApproved($this->session->userdata('user_id')));
		$data['requests_papproved']=implode($this->Login_model->getRequestsPApproved($this->session->userdata('user_id')));
		 $count=$this->Login_model->getCountForPendingNotification($this->session->userdata('user_id'));
$data['count']=$count;

		$data['user']=$user->row_array();
		$data['details']=$name;
		$data['notis']=$notis;

		//*********SHOW NOTIFICATIONS*********


		$data['title']="Dashboard || Activo";
		$data['page']="Dashboard";
				$this->load->view("includes/header.php",$data);
        $this->load->view("includes/header-bp.php",$data);
        $this->load->view("includes/left-sidebar.php",$data);
      $this->load->view("includes/breadcrumb.php",$data);
		$this->load->view("pages/dashboard.php",$data);
        $this->load->view("includes/right-sidebar.php",$data);
        $this->load->view("includes/footer.php",$data);
		 // }
	}


	public function showProfile(){
		//set $data varibale here for page name and title
		//load header and footer and sidebars

		//load view to show profile of the user



		$user=$this->Login_model->getUser('user_id',$this->session->userdata('user_id'));
		$data['user']=$user->row_array();
		 $count=$this->Login_model->getCountForPendingNotification($this->session->userdata('user_id'));
$data['count']=$count;


			$this->load->view("includes/header.php",$data);
        $this->load->view("includes/header-bp.php",$data);
        $this->load->view("includes/left-sidebar.php",$data);
        $this->load->view("includes/breadcrumb.php",$data);
		$this->load->view("pages/request-item.php",$data);
//        $this->load->view("includes/right-sidebar.php",$data);
        $this->load->view("includes/footer.php",$data);
	}

}
?>
