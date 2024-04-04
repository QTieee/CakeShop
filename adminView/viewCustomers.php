<div >
  <h2>All Customers</h2>
  <table class="table ">
    <thead>
      <tr>
        <th class="text-center">STT</th>
        <th class="text-center">Họ</th>
        <th class="text-center">Tên</th>
        <th class="text-center">Email</th>
        <th class="text-center">Ngày tạo</th>
      </tr>
    </thead>
    <?php
      include_once "../AdditionalPHP/connection.php";
      $sql="SELECT * from user where isAdmin=0";
      $result=$conn-> query($sql);
      $count=1;
      if ($result-> num_rows > 0){
        while ($row=$result-> fetch_assoc()) {
           
    ?>
    <tr>
      <td><?=$count?></td>
      <td><?=$row["fname"]?></td>
      <td><?=$row["lname"]?></td>
      <td><?=$row["email"]?></td>
      <td><?=$row["createDate"]?></td>
    </tr>
    <?php
            $count=$count+1;
           
        }
    }
    ?>
  </table>
  <!-- ĐÃ XONG KHÔNG CHỈNH LẠI -->