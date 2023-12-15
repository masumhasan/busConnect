<?php include 'header.php'; ?>
 <div class="container">
 <h2>Fare Query</h2>
    <form method="post" action="search_results.php">
        <label for="sourceStopID">Source Stop ID:</label>
        <input type="text" name="sourceStopID" required>
        
        <label for="destinationStopID">Destination Stop ID:</label>
        <input type="text" name="destinationStopID" required>
        
        <input type="submit" value="Submit">
    </form>

 </div>

    <?php include 'footer.php'; ?>