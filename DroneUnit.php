<?php
class DroneUnit{

  private $unitID;
  private $droneType;
  private $position;
  private $dronesAssigned;
  private $dronesAvailable;
  private $dronesReady;


  function __construct($unitID,$droneType,$position,$dronesAssigned,$dronesAvailable,$dronesReady){

          $this->unitID= $unitID;
          $this->droneType = $droneType;
          $this->position = $position;
          $this->dronesAssigned = $dronesAssigned;
          $this->dronesAvailable = $dronesAvailable;
          $this->dronesReady = $dronesReady;
           
    }

}



?>