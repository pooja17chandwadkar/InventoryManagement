<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php
	class FFD_1 extends AerialDrone{


		  function __construct($designation,$model,$msnRadius,$fltSpd,$waterCap){

		  		  parent::__construct("FFD1","Jaguar",100,50,1000);
		           
		    }


		    function toString(){

			    echo'<h3>Designation: '.$this->designation.'  </h3>';
			    echo'<h3>Model: '.$this->model.'</h3>';
			    echo'<h3>MSN Radius: '.$this->msnRadius.' </h3>';
			    echo'<h3>Flight Spd: '.$this->fltSpd.' </h3>';
			    echo'<h3>Water Cap: X: '.$this->waterCap.'</h3>';

		    }

		    function toHTML(){
		    	
		    }

		   

	}

?>

</body>
</html>>
