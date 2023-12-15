

<?php
include('db.php');
?>
<?php
include('header.php');
?>

<?php
if (isset($_GET['id'])){
    $id=$_GET['id'];}

    $query = "SELECT * FROM `faretable` where `FareID` = '$id'";
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

    $FareID = $_POST['FareID'];
    $BusID = $_POST['BusID'];
    $SourceStopID = $_POST['SourceStopID'];
    $DestinationStopID = $_POST['DestinationStopID'];
    $Fare = $_POST['Fare'];


    $query= "update `faretable` set `FareID` = '$FareID',`BusID` = '$BusID',`SourceStopID`=' $SourceStopID',`DestinationStopID`= '$DestinationStopID',`Fare`=$Fare where `FareID` = '$id_new'";
    $result = mysqli_query($connection, $query);
    if (!$connection) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Check for query errors
    if (!$result) {
        die("Query Failed: " . mysqli_error($connection));
    }
    else{
        header('location:faretable.php?updatemsg=Stop Data Updated Sucessfully');
    }
}
?>

<form action="updatefare.php?id_new=<?php echo $id; ?>" method="post">
        <div class="form-group">
            <label for="FareID"></label>
            <input type="text" class="form-control" name="FareID" value="<?php echo $row['FareID'] ?>">
          </div>
          <div class="form-group">
            <label for="BusID"></label>
            <input type="text" class="form-control" name="BusID" value="<?php echo $row['BusID'] ?>">
          </div>
          <div class="form-group">
            <label for="SourceStopID"></label>
            <input type="text" class="form-control" name="SourceStopID" value="<?php echo $row['SourceStopID'] ?>">
          </div>

          <div class="form-group">
            <label for="DestinationStopID"></label>
            <input type="text" class="form-control" name="DestinationStopID" value="<?php echo $row['DestinationStopID'] ?>">
          </div>

          <div class="form-group">
            <label for="Fare"></label>
            <input type="text" class="form-control" name="Fare" value="<?php echo $row['Fare'] ?>">
          </div>
          

          <input type="submit" class="btn btn-success" name="updatefare" value="Update">
          </form>



<?php
include('footer.php');
?>
