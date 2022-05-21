<!DOCTYPE html>
<html>
<head>

</head>
<body>
<?PHP

class Location{
    // Properties
        Private $X; 
        Private $Y;
        Private $Z;
        

        function __construct($X,$Y,$Z){
        	$this->X = $X;
	        $this->Y = $Y;
	        $this->Z = $Z;
        }

        function toString(){

                echo'<h3>X: '.$this->X.'  </h3>';
                echo'<h3>Y: '.$this->Y.'</h3>';
                echo'<h3>Z: '.$this->Z.' </h3>';
                
        }
  }      

?>

</body>

</html>