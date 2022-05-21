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

	//echo "Connected to forestfirefighting database";
}

$query = "SELECT * FROM drones WHERE DroneID = ?";
$ST = $conn -> prepare($query);
$ST ->bind_param("s",$_GET['Q']);
$ST ->execute();
$ST ->store_result();
$ST ->bind_result($DID,$DModel,$UAssignds,$DStat,$DCond);
$ST ->fetch();
$ST ->close();

echo '<div class="myDiv">';
echo "<h3>connected to forestfirefighting Database<h3>";
echo "<h2>Drone Information<h2>";
echo "<h3>Drone ID:".$DID."</h3>";
echo "<h3>Model:".$DModel."</h3>";
echo "<h3>Unit Assigned:".$UAssignds."</h3>";
echo "<h3>Drone Status:".$DStat."</h3>";
echo "<h3>Drone Condition:".$DCond."</h3>";
echo '</div>';
?>
</body>
</html>