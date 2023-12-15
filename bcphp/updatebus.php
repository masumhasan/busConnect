

<?php
include('db.php');
?>
<?php
include('header.php');
?>

<?php
if (isset($_GET['id'])){
    $id=$_GET['id'];}

    $query = "SELECT * FROM `buses` where `BusID` = '$id'";
    $result = mysqli_query($connection, $query);

    if (!$connection) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Check for query errors
    if (!$result) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
        $row = mysqli_fetch_assoc($result);

    }



?>


<?php
if (isset($_POST['updatebus'])){

    if (isset($_GET['id_new'])){
        $id_new = $_GET['id_new'];
    }

    $BusID = $_POST['BusID'];
    $BusName = $_POST['BusName'];
    $Schedule = $_POST['Schedule'];

    $query= "update `buses` set `BusID` = '$BusID',`BusName` = '$BusName',`Schedule` = '$Schedule' where `BusID` = '$id_new'";
    $result = mysqli_query($connection, $query);
    if (!$connection) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Check for query errors
    if (!$result) {
        die("Query Failed: " . mysqli_error($connection));
    }
    else{
        header('location:index.php?updatemsg=Bus Data Updated Sucessfully');
    }
}
?>

<form action="updatebus.php?id_new=<?php echo $id; ?>" method="post">
        <div class="form-group">
            <label for="BusName"></label>
            <input type="text" class="form-control" name="BusName" value="<?php echo $row['BusName'] ?>">
          </div>
          <div class="form-group">
            <label for="BusID"></label>
            <input type="text" class="form-control" name="BusID" value="<?php echo $row['BusID'] ?>">
          </div>
          <div class="form-group">
            <label for="Schedule">Schedule</label>
            <select class="form-control" name="Schedule" value="<?php echo $row['Schedule'] ?>">
              <option>Every 15 Minites</option>
              <option>Every 30 Minites</option>
              <option>Every Hour</option>
              <option>No Schedule</option>
              
            </select>
          </div>

          <input type="submit" class="btn btn-success" name="updatebus" value="Update">
          </form>



<?php
include('footer.php');
?>
