

<?php
include('db.php');
?>
<?php
include('header.php');
?>

<?php
if (isset($_GET['id'])){
    $id=$_GET['id'];}

    $query = "SELECT * FROM `busstops` where `StopID` = '$id'";
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
if (isset($_POST['updatebusstops'])){

    if (isset($_GET['id_new'])){
        $id_new = $_GET['id_new'];
    }

    $StopID = $_POST['StopID'];
    $StopName = $_POST['StopName'];


    $query= "update `busstops` set `StopID` = '$StopID',`StopName` = '$StopName' where `StopID` = '$id_new'";
    $result = mysqli_query($connection, $query);
    if (!$connection) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Check for query errors
    if (!$result) {
        die("Query Failed: " . mysqli_error($connection));
    }
    else{
        header('location:busstops.php?updatemsg=Stop Data Updated Sucessfully');
    }
}
?>

<form action="updatebusstops.php?id_new=<?php echo $id; ?>" method="post">
        <div class="form-group">
            <label for="StopID"></label>
            <input type="text" class="form-control" name="StopID" value="<?php echo $row['StopID'] ?>">
          </div>
          <div class="form-group">
            <label for="StopName"></label>
            <input type="text" class="form-control" name="StopName" value="<?php echo $row['StopName'] ?>">
          </div>
          

          <input type="submit" class="btn btn-success" name="updatebusstops" value="Update">
          </form>



<?php
include('footer.php');
?>
