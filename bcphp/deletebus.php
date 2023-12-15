<?php
include('db.php');
?>

<?php
if (isset($_GET['id'])){
    $id=$_GET['id'];

    $query="delete from `buses` where `BusID` = '$id'";
    $result = mysqli_query($connection, $query);

    if (!$connection) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Check for query errors
    if (!$result) {
        die("Query Failed: " . mysqli_error($connection));
    } else {
       header('location:index.php?deletemsg=You Have Deleted The Record');

    }
}
?>