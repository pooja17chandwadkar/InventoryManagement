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

$query = "SELECT * FROM airfields WHERE AFNAME = ?";
$ST = $conn -> prepare($query);
$ST ->bind_param("s",$_GET['Q']);
$ST ->execute();
$ST ->store_result();
$ST ->bind_result($AI,$AFNM,$LX,$LY,$LZ,$ACCap);
$ST ->fetch();
$ST ->close();

echo '<div class="myDiv">';
echo "<h3>connected to forestfirefighting Database<h3>";
echo "<h2>Airfield Information<h2>";
echo "<h3>AFID:".$AI."</h3>";
echo "<h3>Airfield Name:".$AFNM."</h3>";
echo "<h3>Coordinates:X:" .$LX." Y:" .$LY." Z:" .$LZ."</h3>";
echo "<h3>Airfield Capacity:".$ACCap." drones</h3>";
echo '</div>';
?>
</body>
</html>