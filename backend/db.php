<?php
$username="zhorkinigor";
$password= "root12345";

try {
    $conn = new PDO("mysql:host=mysql;dbname=marketplace", "zhorkinigor", "root12345");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    echo "Успешное подключение к БД";
}
catch (PDOException $e) {
    echo "Ошибка: " . $e->getMessage();
}