<?php
class Target{

  private $tgtNumber;
  private $detectedOn;
  private $tgtAge;
  private $tgtStatus;
  private $tgtSize;
  private $centerPoint;
  

  function __construct($tgtNumber,$detectedOn,$tgtAge,$tgtStatus,$tgtSize,$centerPoint){

          $this->tgtNumber= $tgtNumber;
          $this->detectedOn = $detectedOn;
          $this->tgtAge = $tgtAge;
          $this->tgtStatus = $tgtStatus;
          $this->tgtSize = $tgtSize;
          $this->centerPoint = $centerPoint;
           
    }

      function toString(){

          echo'<h3>Target Number: '.$this->tgtNumber.'  </h3>';
          echo'<h3>Detected On: '.$this->detectedOn.'</h3>';
          echo'<h3>Target Age: '.$this->tgtAge.' </h3>';
          echo'<h3>Target Status: '.$this->tgtStatus.' </h3>';
          echo'<h3>Target Size: X: '.$this->tgtSize.'</h3>';
           echo'<h3>Center Point: X: '.$this->centerPoint.'</h3>';

        }

        function toHTML(){
          
        }


}



?>