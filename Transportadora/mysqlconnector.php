<?php
$servername = "localhost";
$username = "root";
$password = "";


try {
    $conn = new PDO("mysql:host=$servername;dbname=test", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Database Connectada."; 
    echo "!"; 
    }
catch(PDOException $e)
    {
    // echo "Conexão falhou com o seguinte erro:\: " . $e->getMessage();
    echo "X " . $e->getMessage();
    }
?>