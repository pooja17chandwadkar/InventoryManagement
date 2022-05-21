<?php
abstract class AerialDrone {

  private $designation;
  private $model;
  private $msnRadius;
  private $fltSpd;
  private $waterCap;
  

  function __construct($designation,$model,$msnRadius,$fltSpd,$waterCap){

          $this->designation= $designation;
          $this->model = $model;
          $this->msnRadius = $msnRadius;
          $this->Manufacturer = $fltSpd;
          $this->waterCap = $waterCap;
           
    }



    function get_designation(){

      return $this->designation;
    }

    function set_designation($DSG){

      $this->designation = $DSG;
    }

     function get_model(){

      return $this->model;
    }

     function set_model($MDL){

      $this->model = $MDL;
    }

   
     function get_Manufacturer(){

      return $this->Manufacturer;
    }

     function set_Manufacturer($MF){

      $this->Manufacturer = $MF;
    }

     function get_waterCap(){

      return $this->waterCap;
    }

     function set_waterCap($WC){

      $this->waterCap = $WWC;
    }

      abstract function toString(); 
      abstract function toHTML(); 
    
}



?>