<?php
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "myDBPDO";

try {
    //$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // sql to delete a record
    $sql = "DELETE FROM transportadora WHERE id=$id";

    // use exec() because no results are returned
    $conn->exec($sql);
    echo "Tupla apagada.";
    }
catch(PDOException $e)
    {
    echo "Erro: ".$sql . "<br>" . $e->getMessage();
    }

$conn = null;
?>