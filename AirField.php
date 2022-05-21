<?php
class AirField{

  private $IDNumber;
  private $name;
  private $position;
  private $capacity;
  private $units;


  function __construct($IDNumber,$name,$position,$capacity,$units){

          $this->IDNumber= $IDNumber;
          $this->name = $name;
          $this->position = $position;
          $this->capacity = $capacity;
          $this->units = $units;
           
    }

        function toString(){

        }

        function toHTML(){
          
        }


}



?>