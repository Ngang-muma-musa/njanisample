
<?php
session_start();
require "../../includes/db.php";
if (!isset($_SESSION['role'])&&!isset($_SESSION['name'])) {
  header("Location:../../html/adminLogin.php");
  exit();
}
else{
  if ($_SESSION['role']!=="Admin" && $_SESSION['name']!=="Admin") {
     header("Location:../../html/adminLogin.php");
     exit();
  }
  else{
$sql = "SELECT * FROM waiting_list";
$result = mysqli_query($conn,$sql);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Approve</title>
  <link rel="stylesheet" type="text/css" href="../css/admin.css">
</head>
<body>
  <div class="main">
     <section>
     	<div class="ad">
     		  <ul>
              <div class="ul">
               <div><li><a  class="link" href="admin.php">Home</a></li></div>
               <div><li><a  class="link" href="aprove.php">Approve</a></li></div>
              </div>
     		  </ul>
     	</div><br>
          <div class="admincontent">
<!--           <div class="ad">
          <ul>
              <div class="ul">
                 <div><li><a  class="link" href="admin.html">Home</a></li></div>
                 <div><li><a  class="link" href="aprove.html">Approve</a></li></div>
              </div>
          </ul>
      </div><br> -->
              
               <div class="content tab">
                    <h1>APPROVAL LIST</h1>
                    
                    <table>
                         <thead>
                              <th>ID</th>
                              <th>Name</th>
                              <!-- <th>Status</th> -->
                              <th colspan="2">Action</th>
                         </thead>
                         <tbody>
                          <?php

                                while ($row = mysqli_fetch_assoc($result)) {
                                    $id = $row['id'];
                                     $name  = $row['name'];
                                      ?>

                                       <tr>
                                           <td><?php echo $id;?></td>
                                           <td><?php echo $name;?></td>
                                           <td><a class="edit" href="../adminincludes/approve.inc.php?Approve=<?php echo $id;?>">Approve</a></td>
                                           <td><a class="delete" href="../adminincludes/approve.inc.php?DisApprove=<?php echo $id;?>">DisApprove</a></td>
                                      </tr>

                               <?php      
                                }
                          ?>
                            
                         </tbody>
                    </table><br><br>
                     </div>
                    <!--................................................... REtrive week ................................................................................. -->
          </div>
     </section>
     </div>
     <script type="text/javascript" src="jquery-3.4.1.js"></script>
     <script type="text/javascript" src="mainn.js"></script>
</body>
</html>
<?php
  }
}
?>