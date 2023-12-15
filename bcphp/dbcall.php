<?php

define("HOSTNAME","localhost");
define("USERNAME","root");
define("PASSWORD","");
define("DATABASE","c");


$connection = mysqli_connect(HOSTNAME,USERNAME,PASSWORD,DATABASE);
IF(!$connection){
    die("CONNNECTION FAILED");
}
else{
    echo"YEEEEEEEE DB CONNECTED";
}
?>
