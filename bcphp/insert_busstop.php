<?php include 'db.php'; ?>

<?php
if (isset($_POST['addbusstop'])) {
  
    $StopID = $_POST['StopID'];
    $StopName = $_POST['StopName'];
   

    if ($StopName == "" || empty($StopName)) {
        header('location: busstops.php?message=YOU NEED TO FILL IN THE BUSStop NAME');
    } else {
        // Use prepared statement to prevent SQL injection
        $query = "INSERT INTO `busstops` (StopID, StopName) VALUES (?, ?, ?)";
        $stmt = mysqli_prepare($connection, $query);

        if ($stmt) {
            // Bind parameters to the prepared statement
            mysqli_stmt_bind_param($stmt, "iss", $StopID, $StopName);

            // Execute the statement
            $success = mysqli_stmt_execute($stmt);

            // Check if the insertion was successful
            if ($success) {
                header('location: busstops.php?insertmes=YOUR VALUES HAS BEEN INSERTED SUCCESSFULLY');
            } else {
                // Handle the error
                header('location: busstops.php?message=' . urlencode("Error: " . mysqli_error($connection)));
            }

            // Close the statement
            mysqli_stmt_close($stmt);
        } else {
            // Handle the error
            header('location: busstops.php?message=' . urlencode("Error: " . mysqli_error($connection)));
        }
    }
}

// Close the database connection
mysqli_close($connection);
?>
