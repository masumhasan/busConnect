<?php include 'db.php'; ?>

<?php
if (isset($_POST['addstopmap'])) {
  
    $BusID = $_POST['BusID'];
    $StopID = $_POST['StopID'];
   

    if ($BusID == "" || empty($BusID)) {
        header('location: stopmap.php?message=YOU NEED TO FILL IN THE BUSStop NAME');
    } else {
        // Use prepared statement to prevent SQL injection
        $query = "INSERT INTO `busstopmapping` (StopID) VALUES (?, ?)";
        $stmt = mysqli_prepare($connection, $query);

        if ($stmt) {
            // Bind parameters to the prepared statement
            mysqli_stmt_bind_param($stmt, "iss", $BusID, $StopID);

            // Execute the statement
            $success = mysqli_stmt_execute($stmt);

            // Check if the insertion was successful
            if ($success) {
                header('location: stopmap.php?insertmes=YOUR VALUES HAS BEEN INSERTED SUCCESSFULLY');
            } else {
                // Handle the error
                header('location: stopmap.php?message=' . urlencode("Error: " . mysqli_error($connection)));
            }

            // Close the statement
            mysqli_stmt_close($stmt);
        } else {
            // Handle the error
            header('location: stopmap.php?message=' . urlencode("Error: " . mysqli_error($connection)));
        }
    }
}

// Close the database connection
mysqli_close($connection);
?>
