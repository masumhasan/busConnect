<?php include 'db.php'; ?>

<?php
if (isset($_POST['addbus'])) {
  
    $BusName = $_POST['BusName'];
    $BusID = $_POST['BusID'];
    $Schedule = $_POST['Schedule'];

    if ($BusName == "" || empty($BusName)) {
        header('location: index.php?message=YOU NEED TO FILL IN THE BUS NAME');
    } else {
        // Use prepared statement to prevent SQL injection
        $query = "INSERT INTO `buses` (BusID, BusName, Schedule) VALUES (?, ?, ?)";
        $stmt = mysqli_prepare($connection, $query);

        if ($stmt) {
            // Bind parameters to the prepared statement
            mysqli_stmt_bind_param($stmt, "iss", $BusID, $BusName, $Schedule);

            // Execute the statement
            $success = mysqli_stmt_execute($stmt);

            // Check if the insertion was successful
            if ($success) {
                header('location: index.php?insertmes=YOUR VALUES HAS BEEN INSERTED SUCCESSFULLY');
            } else {
                // Handle the error
                header('location: index.php?message=' . urlencode("Error: " . mysqli_error($connection)));
            }

            // Close the statement
            mysqli_stmt_close($stmt);
        } else {
            // Handle the error
            header('location: index.php?message=' . urlencode("Error: " . mysqli_error($connection)));
        }
    }
}

// Close the database connection
mysqli_close($connection);
?>
