<?php
include("db_conn.php");

$sql_select = "SELECT * FROM user_info";
$result = mysqli_query($conn, $sql_select);
while($rows=mysqli_fetch_assoc($result)){
   $data[]=$rows;
}
echo json_encode($data);

?>





