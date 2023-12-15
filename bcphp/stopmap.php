<?php 
include('header.php');
?>
<?php include('db.php');?>
  

<div class="container">

<section>


    <div class="container">
        <div class="box1">
            
      <h2 style="margin-bottom: 100px;"> StopMap </h2>
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal1">StopMap</button>

        </div>
        <?php

if(isset($_GET['message'])){
    echo "<h6>".$_GET['message']."</h6>";
}

?>
        <?php

if(isset($_GET['insertmes'])){
    echo "<h6>".$_GET['insertmes']."</h6>";
}

?>

<?php

if(isset($_GET['updatemsg'])){
    echo "<h6>".$_GET['updatemsg']."</h6>";
}
if(isset($_GET['deletemsg'])){
    echo "<h6>".$_GET['deletemsg']."</h6>";
}

?>
      <table class="table">
          <thead class="thead-dark">
            <tr>
            
              <th scope="col">Bus ID</th>
              <th scope="col">STOP ID</th>
              
           
            </tr>
          </thead>
          <tbody>
            <?php
            $query = "SELECT * FROM `busstopsmapping`";
            $result = mysqli_query($connection, $query);

            // Check for connection errors
            if (!$connection) {
                die("Connection failed: " . mysqli_connect_error());
            }

            // Check for query errors
            if (!$result) {
                die("Query Failed: " . mysqli_error($connection));
            } else {
                while ($row = mysqli_fetch_assoc($result)) {
            ?>
                    <tr>
                        <td><?php echo $row['BusID']?></td>
                        <td><?php echo $row['StopID'] ?></td>
                    
                        <td><a class="btn btn-success" href="updatebusstops.php?id=<?php echo $row['StopID']?>">Update</a></td>
                        <td><a class="btn btn-danger"  href="deletebusstops.php?id=<?php echo $row['StopID']?>">Delete</a></td>
                    </tr>
            <?php
                }
            }
            ?>
     </tbody>
        
        </table>
    </div>
   </section>


</div>

<!-- Modal -->
<form class="form-inline" action="insert_busstop.php" method="post">
<div class="modal fade" id="Modal1" tabindex="-1" role="dialog" aria-labelledby="Modal1Label" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalLabel">Add BusStop</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
     
          <div class="form-group">
            <label for="StopID"></label>
            <input type="text" class="form-control" name="StopID" placeholder="StopID">
          </div>
          <div class="form-group">
            <label for="StopName"></label>
            <input type="text" class="form-control" name="StopName" placeholder="StopName">
          </div>
         

        


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-success" name="addbusstop" value="ADD">

      </div>
    </div>
  </div>
  </form>




</div>     
   <?php 
include('footer.php');
?>
