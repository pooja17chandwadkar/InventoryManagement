 <?php
        include 'Report.php';

        // Establish a connection to Database
        $db_connect = mysqli_connect("localhost", "root", "", "forestfirefighting",3308);

        if(mysqli_connect_errno()){
            echo"Failed to conenct to MySQL:" .mysqli_connect_errno();
        }
        
        else{
                $v1 =  $_POST["agency"];  
                $v2 = $_POST["date"];
                $v3 = $_POST['desc'];
                $v4 = $_POST['size'];
                $v5 = $_POST['XCord'];
                $v6 = $_POST['YCord'];
                $v7 = $_POST['altitude'];
                $v8 = $_POST['status'];

            // connection successfull
                     
                $obj_tbl = $db_connect->query("INSERT INTO FireReport(                  
                            ReportedBy,ReportDate,FireDescription,FireSize,LocX,LocY,LocZ,FireStatus)
                            VALUES('$v1','$v2','$v3','$v4','$v5','$v6','$v7','$v8')");

               if (empty( $obj_tbl))
               {
                 echo"<h2> No Data Available </h2>";
               }
                $obj_tbl1 = $db_connect->query("SELECT * from FireReport order by ReportNumber desc limit 1 ");
              if($obj_tbl1->num_rows > 0){
                while ($row_val = $obj_tbl1->fetch_assoc()){
                                  
                     $row_val["firePosition"]= $row_val["LocX"]." Y: ".$row_val["LocY"]. " Z: ".$row_val["LocY"] ; 
                      $A1 = new Report( $row_val["ReportNumber"],$row_val["ReportedBy"], $row_val["ReportDate"], $row_val["FireDescription"], $row_val["FireSize"], $row_val["firePosition"], $row_val["fireStatus"]);
                        echo "<h2>" .$A1->toString(). "</h2>";
                }
           
             }else{
             echo"<h2> No Data Available </h2>";
        }
        }
               
        // Cloase Database
        mysqli_close($db_connect);
   
        ?>
        <form method="POST" >  
        <button type="button" onclick="location='MainMenu.html'" >BACK TO MAIN MENU</button>
        </form> 

