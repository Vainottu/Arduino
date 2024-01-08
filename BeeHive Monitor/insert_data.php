<?php
require_once "db_connection.php";

// Get values from the Arduino
$insideTemp = $_GET['insideTemp'];
$outsideTemp = $_GET['outsideTemp'];
$insideHumidity = $_GET['insideHumidity'];
$weight = $_GET['weight'];
$hiveID = $_GET['hiveID'];

// Prepare and bind the statement
$stmt = $conn->prepare("INSERT INTO Measurements (HiveID, TimeStamp, InsideTemp, OutsideTemp, InsideHumidity, Weight) VALUES (?, NOW(), ?, ?, ?, ?)");
$stmt->bind_param("idddd", $hiveID, $insideTemp, $outsideTemp, $insideHumidity, $weight);

// Execute the statement
if ($stmt->execute()) {
    echo "Data inserted successfully.";
} else {
    echo "Error inserting data: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
