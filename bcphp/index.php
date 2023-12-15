<?php 
include('header.php');
?>
<?php include('db.php');?>
  

<div class="container">

<section>


    <div class="container">
        <div class="box1">
            
      <h2 style="margin-bottom: 100px;"> All Buses </h2>
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal1">Add Bus</button>

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
            
              <th scope="col">BUS ID</th>
              <th scope="col">BUS NAME</th>
              <th scope="col">SCHEDULE</th>
              <th scope="col">Update</th>
              <th scope="col">Delete</th>
             
           
            </tr>
          </thead>
          <tbody>
            <?php
            $query = "SELECT * FROM `buses`";
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
                        <td><?php echo $row['BusName'] ?></td>
                        <td><?php echo $row['Schedule']?></td>
                        <td><a class="btn btn-success" href="updatebus.php?id=<?php echo $row['BusID']?>">Update</a></td>
                        <td><a class="btn btn-danger"  href="deletebus.php?id=<?php echo $row['BusID']?>">Delete</a></td>
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
<form class="form-inline" action="insert_data.php" method="post">
<div class="modal fade" id="Modal1" tabindex="-1" role="dialog" aria-labelledby="Modal1Label" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalLabel">Add Bus</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
     
          <div class="form-group">
            <label for="BusName"></label>
            <input type="text" class="form-control" name="BusName" placeholder="BusName">
          </div>
          <div class="form-group">
            <label for="BusID"></label>
            <input type="text" class="form-control" name="BusID" placeholder="BusID">
          </div>
          <div class="form-group">
            <label for="Schedule">Schedule</label>
            <select class="form-control" name="Schedule">
              <option>Every 15 Minites</option>
              <option>Every 30 Minites</option>
              <option>Every Hour</option>
              <option>No Schedule</option>
              
            </select>
          </div>

        


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-success" name="addbus" value="ADD">

      </div>
    </div>
  </div>
  </form>




</div>     
   <?php 
include('footer.php');
?>
