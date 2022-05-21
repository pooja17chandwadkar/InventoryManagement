<!DOCTYPE html>
<html>
<body>

<?PHP
 class Report{
    // Properties
        Private $reportNumber;
        Private $reportedBy;
        Private $reportDate;
        Private $fireDescription;
        Private $fireSize;
        Private $firePosition;
        Private $fireStatus;
    
    // Constructor 
  function __construct($reportNumber,$reportedBy,$reportDate,$fireDescription,$fireSize,$firePosition,$fireStatus){

        $this->reportNumber = $reportNumber;
        $this->reportedBy= $reportedBy;
        $this->reportDate = $reportDate;
        $this->fireDescription = $fireDescription;
        $this->fireSize = $fireSize;
        $this->firePosition= $firePosition;
        $this->fireStatus = $fireStatus;
       
  }


   function toString(){
    
    echo"<h3>Connected To fireforestfighting database</h3>";
    echo'<h1>*****REPORT FILED*****</h1>';
    echo'<h3>Report From: '.$this->reportedBy.'  </h3>';
    echo'<h3>Report Date: '.$this->reportDate.'</h3>';
    echo'<h3>Target Description: '.$this->fireDescription.' </h3>';
    echo'<h3>Target Size: '.$this->fireSize.' </h3>';
    echo'<h3>Fire Coordinates: X: '.$this->firePosition.'</h3>';
    echo'<h3>Target Status: '.$this->fireStatus.'</h3>';
    
    }   
}

?>
</body>
</html>



