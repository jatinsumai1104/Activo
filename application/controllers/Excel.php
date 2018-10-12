<?php
require_once("excel_reader2");
class Excel extends CI_Controller{
   public function __construct(){
      parent::__construct();
      $this->load->model('Excel_model');
//       $this->load->library("excel_reader2");
   }
   public function loadExcel(){
      $this->load->view("pages/excel");
   }
   public function addExcel(){
//      $this->load->model('Excel_model');
      if(isset($_POST["addFile"])){
         
         if(isset($_FILES["form-file"])){

         $file = new SimpleXLSX($_FILES["form-file"]["tmp_name"]);
         
         $this->Excel_model->check();
         $this->Excel_model->addData($file);
      }
      echo "DONE";
   }
}
    public function bulk_upload()
    {
        $this->load->library('');
        
        $this->spreadsheet_excel_reader->setOutputEncoding('CP1251'); // Set output Encoding.
        $this->spreadsheet_excel_reader->read('example.xls'); // relative path to .xls that was uploaded earlier
        
        $rows = $this->spreadsheet_excel_reader->sheets[0]['cells'];
        $row_count = count($this->spreadsheet_excel_reader->sheets[0]['cells']);
        echo 'my row count is'.$row_count;
    
        for ($i = 2; $i <= $row_count; $i++) {
            var_dump($rows[$i]);
            echo "<br><br><hr>";
        }

    }
}
?>