<?php
$servername = "localhost";
$mysqluser = "";
$mysqlpassword = "";
$databasename = "";

// Create connection
$conn = new mysqli($servername, $mysqluser, $mysqlpassword, $databasename);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>
