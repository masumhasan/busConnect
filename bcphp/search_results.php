
<?php include 'db.php'; ?>
<?php
// Assuming $connection is a valid MySQLi connection object

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $sourceStopID = $_POST['sourceStopID'];
    $destinationStopID = $_POST['destinationStopID'];

    // Use prepared statements to prevent SQL injection
    $query = "SELECT ft.FareID, bsSource.StopName AS SourceStopName, bsDest.StopName AS DestinationStopName, ft.Fare
              FROM FareTable ft
              JOIN BusStops bsSource ON ft.SourceStopID = bsSource.StopID
              JOIN BusStops bsDest ON ft.DestinationStopID = bsDest.StopID
              WHERE ft.SourceStopID = ? AND ft.DestinationStopID = ?";
    
    $stmt = mysqli_prepare($connection, $query);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "ii", $sourceStopID, $destinationStopID);
        mysqli_stmt_execute($stmt);

        $result = mysqli_stmt_get_result($stmt);

        if (!$result) {
            die("Query Failed: " . mysqli_error($connection));
        } else {
            // Store the result in a session variable
            session_start();
            $_SESSION['search_results'] = mysqli_fetch_all($result, MYSQLI_ASSOC);

            // Redirect to the results page
            header("Location: results_page.php");
            exit();
        }

        mysqli_stmt_close($stmt);
    } else {
        die("Query preparation failed: " . mysqli_error($connection));
    }
}

// Close the database connection
mysqli_close($connection);
?>
