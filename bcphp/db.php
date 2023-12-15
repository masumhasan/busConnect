<?php

define("HOSTNAME","localhost");
define("USERNAME","root");
define("PASSWORD","");
define("DATABASE","dhakabusroutes");


$connection = mysqli_connect(HOSTNAME,USERNAME,PASSWORD,DATABASE);
IF(!$connection){
    die("CONNNECTION FAILED");
}

?>