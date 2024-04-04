<div class="container p-5">

<h4>Edit Product Detail</h4>
<?php
  include_once "../AdditionalPHP/connection.php";
	$ID=$_POST['record'];
	$qry=mysqli_query($conn, "SELECT * FROM products_test WHERE p_id='$ID'");
	$numberOfRow=mysqli_num_rows($qry);
	if($numberOfRow>0){
		while($row1=mysqli_fetch_array($qry)){
?>
 <form id="update-Items" action="404.html" method="POST" enctype='multipart/form-data'>
        <div class="form-group">
            <input type="text" name="product_id" class="form-control" value="<?=$row1['p_id']?>" hidden>
        </div>
        <div class="form-group">
            <label for="name">Product Name:</label>
            <input type="text" name="p_name" class="form-control" value="<?=$row1['p_name']?>">
        </div>
        <div class="form-group">
            <label for="desc">Product Description:</label>
            <input type="text" name="p_desc" class="form-control" value="<?=$row1['p_desc']?>">
        </div>
        <div class="form-group">
            <label for="price">Unit Price:</label>
            <input type="number" name="p_price" class="form-control" value="<?=$row1['p_price']?>">
        </div>
        <div class="form-group">
            <label for="file">Choose Image:</label>
            <input type="text" name="existingImage" class="form-control" value="<?=$row1['p_img']?>" hidden>
            <input type="file" name="newImage">
        </div>
        <div class="form-group">
            <button type="submit" style="height:40px" class="btn btn-primary">Update Item</button>
        </div>
    </form>
    <?php
            }
        }
    ?>
</div>