<?php
      include_once "../AdditionalPHP/connection.php";

    if(isset($_POST['upload']))
    {
       
        $catname = $_POST['c_name'];
       
         $insert = mysqli_query($conn,"INSERT INTO categories
         (p_cat_name) 
         VALUES ('$catname')");
 
         if(!$insert)
         {
             echo mysqli_error($conn);
             header("Location: ../admin.php?category=error");
         }
         else
         {
             echo "Records added successfully.";
             header("Location: ../admin.php?category=success");
         }
     
    }
        
?>
<!-- ĐÃ XONG KHÔNG SỬA CODE -->