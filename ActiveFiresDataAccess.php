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

$query = "SELECT * FROM firereport WHERE ReportNumber = ?";
$ST = $conn -> prepare($query);
$ST ->bind_param("s",$_GET['Q']);
$ST ->execute();
$ST ->store_result();
$ST -> bind_result($RN,$RB,$RDate,$FDesc,$FSiz,$LX,$LY,$LZ,$FStat);
$ST ->fetch();
$ST ->close();

echo '<div class="myDiv">';
echo "<h3>connected to forestfirefighting Database<h3>";
echo "<h2>Reported Fires<h2>";
echo "<h3>Report Number:".$RN."</h3>";
echo "<h3>Reported By:".$RB."</h3>";
echo "<h3>Report Date:".$RDate."</h3>";
echo "<h3>File Description:".$FDesc."</h3>";
echo "<h3>File Size:".$FSiz."</h3>";
echo "<h3>Coordinates:X:".$LX."Y:".$LY."Z:".$LZ."</h3>";
echo "<h3>Fire Status:".$FStat."</h3>";
echo '</div>';

?>
</body>
</html>
