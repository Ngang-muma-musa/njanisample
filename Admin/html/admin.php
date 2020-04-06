<?php
session_start();
$Id = $_SESSION['weekid']; 
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

// require"../adminincludes/retrive.inc.php";
$sql = "SELECT * FROM week WHERE week_id = $Id";
$result = mysqli_query($conn,$sql);

$sql2 = "SELECT ammount,benefiter FROM total WHERE week_id = $Id ";
$result2 = mysqli_query($conn,$sql2);
?>

<!DOCTYPE html>
<html>
<head>
  <title>Admin</title>
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
      </div>
          <div class="admincontent">
               <div class="btn">
                   <a onclick="tabs(0)" href="#"> Week</a> 
                    <a onclick="tabs(1)" href="##">Beneficiary</a>
                   <a onclick="tabs(2)" href="##">Retrive Week</a>    
               </div><br> 
               <div class="logout" style="float: right; margin-top:0px;"> 
                   <form method="post" action="../../includes/logout.inc.php"> 
                       <button type="submit" name="logout">LOGOUT</button>
                   </form>
               </div> 
               <div class="content tab">
                    <h1>MANAGE WEEK</h1>
                    Week Code:<h4><?php echo $Id;?></h4><br>
                    <table>
                         <thead>
                              <th>Name</th>
                              <th>Status</th>
                              <th>Ammount</th>
                              <th colspan="2">Action</th>
                         </thead>
                         <tbody>
                          <?php
                                while ($row = mysqli_fetch_assoc($result)) {
                                      $id = $row['id'];
                                      $weekId = $row['week_id'];
                                      $name = $row['name'];
                                      $status = $row['status'];
                                      $amt = $row['ammount'];
                                      ?>
                                    <tr>
                                       <td><?php echo $name;?></td>
                                       <td><?php echo $status;?></td>
                                       <td><?php echo $amt;?>FCFA</td>
                                       <td><a class="edit" href="acount.php?id=<?php echo $id;?>">EditAccount</a></td>
                                       <td><a class="delete" href="Edit.html">Delete</a></td>
                                  </tr>

                              <?php 
                                }
                          ?>
                              
                            <tr>
                              <td style="color: red;">TOTAL</td>
                              <td></td>
                               <?php
                                     while ($row = mysqli_fetch_assoc($result2)) {
                                       $amt = $row['ammount'];
                                       $benefiter = $row['benefiter'];
                                     }
                                  ?>
                              <td><?php echo $amt;?>FCFA</td>
                               <td></td>
                                <td></td>
                            </tr> 
                            <tr>
                              <td style="color: green";>BENEFITER</td>
                              <td></td>
                              <td style="text-transform:capitalize;"><?php echo $benefiter; ?></td>
                              <td></td>
                              <td></td>
                            </tr>  
                         </tbody>
                    </table><br><br>
                    <div class="generate">
                      <form method="post" action="../adminincludes/generate.inc.php">
                        <button type="submit" name="submit">Generate New Week</button>
                      </form>
                    </div><br>
                     </div>
                    <!--................................................... Beneficiary ................................................................................. -->
                    <div class="beneficiary tab">
                      <h1>Beneficiary For The Week</h1>
                     <form method="post" action="../adminincludes/beneficiary.inc.php">
                       <input type="text" name="beneficiary" placeholder="Enter Beneficiary">
                       <button type="submit" name="submit">submit</button>
                     </form>
                    </div>
                    <!--................................................. retrive......................................................... -->
                    <div class="retrive tab">
                         <br><br>
                          <h1>RETRIVE WEEK</h1>
                         <div class="input">
                              <form method="post" action="">
                                   <input type="text" name="retrive" placeholder="Enter Retrive Code">
                                   <button type="submit" name="retriv">Retrive</button>
                              </form>
                              </div>
                              <br><br>
                              <div class="retrive-table">

                                     <table>
                                        <thead>
                                             <th>Name</th>
                                             <th>Status</th>
                                             <th>Ammount</th>
                                             <th colspan="2">Action</th>
                                        </thead>
                                        <tbody>
                                          <?php

                                          if (isset($_POST['retriv'])) {
                                                  $code =  $_POST['retrive'];
                                                  $sql  = "SELECT * FROM week WHERE week_id = $code";
                                                  $resullt = mysqli_query($conn,$sql);

                                                 while ($row = mysqli_fetch_assoc($resullt)) {
                                                 $ID = $row['id'];
                                                 $name = $row['name'];
                                                 $status = $row['status'];
                                                 $amt = $row['ammount'];
                                                 $week_id = $row['week_id'];
                                                 ?>
                                                  <tr>
                                                        <td><?php echo $name;?></td>
                                                        <td><?php echo $status;?></td>
                                                        <td><?php echo $amt;?></td>
                                                        <td><a class="edit" href="account.php">EditAccount</a></td>
                                                        <td><a class="delete" href="Edit.html">Delete</a></td>
                                                  </tr>

                                                 <?php
                                               }


                                                }
                                               if (isset($code)) {
                                                   $sql3 = "SELECT ammount,benefiter FROM total WHERE week_id = $code";
                                                   $result3 = mysqli_query($conn,$sql3);
                                                   ?>
                                                               <tr>
                                                                    <td style="color: red";>TOTAL</td>
                                                                    <td></td>
                                                                    <?php
                                                                       while ($row = mysqli_fetch_assoc($result3)) {
                                                                         $amt3 = $row['ammount'];
                                                                          $benefiter = $row['benefiter'];
                                                                       }
                                                                    ?>
                                                                    <td><?php echo $amt3;?>FCFA</td>
                                                                     <td></td>
                                                                      <td></td>
                                                                  </tr>
                                                                     <tr>
                                                                        <td style="color: green";>BENEFITER</td>
                                                                        <td></td>
                                                                        <td style="text-transform:capitalize;"><?php echo $benefiter; ?></td>
                                                                        <td></td>
                                                                        <td></td>
                                                                      </tr>
                                                            </tbody>
                                                       </table><br>
                                                        Week Code:<h4><?php if (isset($code)) {
                                                          echo $code;
                                                        } ?></h4><br>
                                                <?php    
                                               }
       
                                          ?>
                                     
                             </div>
                    </div>
                    
          </div>
     </section>
     </div>
     <script type="text/javascript" src="../JS/jquery-3.4.1.js"></script>
     <script type="text/javascript" src="../JS/mainn.js"></script>
</body>
</html>
<?php
  }
}
?>
