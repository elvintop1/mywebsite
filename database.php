<?php
$servername = "localhost"; // Keep it as 'localhost'
$username = "root"; // Default MAMP username
$password = "root"; // MAMP default password
$database = "mousestore"; // Change if your database name is different

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Set charset to utf8 (optional but recommended)
$conn->set_charset("utf8");

?>
