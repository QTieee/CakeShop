<?php
    include_once "../AdditionalPHP/connection.php";

    $c_id=$_POST['record'];
    $query="DELETE FROM categories where categoryID='$c_id'";

    $data=mysqli_query($conn,$query);

    if($data){
        echo"Category Item Deleted";
    }
    else{
        echo"Not able to delete";
    }
?>
<!-- ĐÃ XONG KHÔNG SỬA CODE -->