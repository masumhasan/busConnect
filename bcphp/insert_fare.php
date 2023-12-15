<?php include 'db.php'; ?>

<?php
if (isset($_POST['addfare'])) {
  
    $FareID = $_POST['FareID'];
    $BusID = $_POST['BusID'];
    $SourceStopID = $_POST['SourceStopID'];
    $DestinationStopID = $_POST['DestinationStopID'];
    $Fare = $_POST['Fare'];

    if ($Fare == "" || empty($Fare)) {
        header('location: faretable.php?message=YOU NEED TO FILL IN THE BUS NAME');
    } else {
        // Use prepared statement to prevent SQL injection
        $query = "INSERT INTO `faretable` (FareID, BusID, SourceStopID,DestinationStopID,Fare) VALUES (?, ?, ?)";
        $stmt = mysqli_prepare($connection, $query);

        if ($stmt) {
            // Bind parameters to the prepared statement
            mysqli_stmt_bind_param($stmt, "iss", $FareID, $BusID, $SourceStopID, $DestinationStopID,$Fare);

            // Execute the statement
            $success = mysqli_stmt_execute($stmt);

            // Check if the insertion was successful
            if ($success) {
                header('location: faretable.php?insertmes=YOUR VALUES HAS BEEN INSERTED SUCCESSFULLY');
            } else {
                // Handle the error
                header('location: faretable.php?message=' . urlencode("Error: " . mysqli_error($connection)));
            }

            // Close the statement
            mysqli_stmt_close($stmt);
        } else {
            // Handle the error
            header('location: faretable.php?message=' . urlencode("Error: " . mysqli_error($connection)));
        }
    }
}

// Close the database connection
mysqli_close($connection);
?>
