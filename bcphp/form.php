
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Stops Autocomplete</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <form action="getbs.php" method="post">
        <label for="busStop">Select Bus Stop:</label>
        <input type="text" id="busStop" name="busStop" autocomplete="off">
        <div id="busStopSuggestions"></div>
        <input type="submit" value="Submit">
    </form>
    <script src="auto.js"></script>
</body>
</html>