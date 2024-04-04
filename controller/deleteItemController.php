<?php

include_once "../AdditionalPHP/connection.php";
    
    $p_id=$_POST['record'];
    $query="DELETE FROM products_test where p_id='$p_id'";

    $data=mysqli_query($conn,$query);

    if($data){
        echo"Product Item Deleted";
    }
    else{
        echo"Not able to delete";
    }
?>
<!-- ĐÃ XONG KHÔNG SỬA CODE -->