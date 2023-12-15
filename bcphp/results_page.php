<?php include 'header.php'; ?>

<?php include 'db.php'; ?>
<div class="conntainer">

<?php
session_start();

// Display the search results
if (isset($_SESSION['search_results'])) {
    $searchResults = $_SESSION['search_results'];

    echo "<table border='1'>
            <tr>
                <th>FareID</th>
                <th>Source Stop</th>
                <th>Destination Stop</th>
                <th>Fare</th>
            </tr>";

    foreach ($searchResults as $row) {
        echo "<tr>
                <td>{$row['FareID']}</td>
                <td>{$row['SourceStopName']}</td>
                <td>{$row['DestinationStopName']}</td>
                <td>{$row['Fare']}</td>
            </tr>";
    }

    echo "</table>";

    // Clear the session variable
    unset($_SESSION['search_results']);
} else {
    echo "No search results available.";
}
?>
</div>

<?php include 'footer.php'; ?>
