<html>
<head>
 <link rel="stylesheet" href="menu.css">
</head>
<body>
<?php
$conn = mysqli_connect("localhost", "root", "", "forestfirefighting",3308);
if(mysqli_connect_errno()){

	echo "Failure To connect to database";
}
else{

	// echo "Connected to forestfirefighting database";
}

$query = "SELECT * FROM droneTypes WHERE model = ?";
$ST = $conn -> prepare($query);
$ST ->bind_param("s",$_GET['Q']);
$ST ->execute();
$ST ->store_result();
$ST -> bind_result($DSG,$MDL,$MRad,$FltSpd,$WCap);
$ST ->fetch();
$ST ->close();

echo '<div class="myDiv">';
echo "<h3>connected to forestfirefighting Database<h3>";
echo "<h2>Drone Specifications<h2>";
echo "<h3>Drone Type: " .$DSG."</h3>";
echo "<h3>Drone Model: " .$MDL."</h3>";
echo "<h3>Operational Range: " .$MRad." kms</h3>";
echo "<h3>Operation Speed: " .$FltSpd." km/hr</h3>";
echo "<h3>Water Capacity: " .$WCap." gals</h3>";
echo '</div>';
?>
</body>
</html>