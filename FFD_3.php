<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<?php
	class FFD_3 extends AerialDrone{
	
	function __construct($designation,$model,$msnRadius,$fltSpd,$waterCap){

		  		  parent::__construct("FFD3","Leopard",175,80,2200);
		           
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