<?php
require "db.php";

$query = "INSERT INTO test_table (username) VALUES ('piska')";
$stmt = $conn->prepare($query);

$stmt->execute();