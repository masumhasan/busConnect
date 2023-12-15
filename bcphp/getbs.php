<?php
if (isset($_GET['query'])) {
    $query = $_GET['query'];

    $sql = "SELECT * FROM BusStops WHERE StopName LIKE '%$query%'";
    $result = mysqli_query($connection, $sql);

    $stops = array();

    while ($row = mysqli_fetch_assoc($result)) {
        $stops[] = $row;
    }

    header('Content-Type: application/json');
    echo json_encode($stops);
}
?>
