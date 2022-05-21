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

$query = "SELECT * FROM droneunits WHERE unitID = ?";
$ST = $conn -> prepare($query);
$ST ->bind_param("s",$_GET['Q']);
$ST ->execute();
$ST ->store_result();
$ST ->bind_result($ID,$DType,$ULoc,$DAssignd,$DAvail,$DReady,$UStre,$UReadyns);
$ST ->fetch();
$ST ->close();

echo '<div class="myDiv">';
echo "<h3>connected to forestfirefighting Database<h3>";
echo "<h2>Drone Unit Information<h2>";
echo "<h3>Unit ID:".$ID."</h3>";
echo "<h3>Drone Type:".$DType."</h3>";
echo "<h3>Airfield:".$ULoc."</h3>";
echo "<h3>Drones Assigned:".$DAssignd." Drones</h3>";
echo "<h3>Drones Available:".$DAvail." Drones</h3>";
echo "<h3>Drones Ready:".$DReady." Drones</h3>";
echo "<h3>Unit Strength:".$UStre."%</h3>";
echo "<h3>Unit Readiness:".$UReadyns."%</h3>";
echo '</div>';

?>