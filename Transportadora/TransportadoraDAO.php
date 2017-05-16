<?php
include "mysqlconnector.php";
 

class TransportadoraDAO{
$id = $_POST["id"];
$ativo = $_POST["ativo"];

public function cadastrar($nome, $preco, $avaliacao, $zona_atendimento, $ativo){
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO MyGuests (firstname, lastname, email)
    VALUES ('John', 'Doe', 'john@example.com')";
    // use exec() because no results are returned
    $conn->exec($sql);
    echo "New record created successfully";
    }
catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }

$conn = null;
}

public function selecionar($id){
		try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$stmt = $conn->prepare("SELECT * FROM TRANSPORTADORA WHERE ID="$id); 
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
		foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
			echo $v;
		}
	}
	catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}
	$conn = null;
}

public function editar($id, $nome, $preco, $avaliacao, $zona_atendimento, $ativo){
	try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		// set the PDO error mode to exception
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		$sql = "UPDATE TRANSPORTADORA
				SET NOME = '".$nome."', PRECO= ".$preco.", AVALIACAO=".$avaliacao.", ZONA_ATENDIMENTO='".$zona_atendimento."', HABILITADO=".$ativo."
				WHERE ID =".$id;

		// Prepare statement
		$stmt = $conn->prepare($sql);

		// execute the query
		$stmt->execute();

		// echo a message to say the UPDATE succeeded
		echo $stmt->rowCount() . " records UPDATED successfully";
		}
	catch(PDOException $e)
		{
		echo $sql . "<br>" . $e->getMessage();
		}

	$conn = null;
}

public function apagar($id){
	try {
		//$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		// set the PDO error mode to exception
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		// sql to delete a record
		$sql = "DELETE FROM TRANSPORTADORA WHERE ID=".$id.";";

		// use exec() because no results are returned
		$conn->exec($sql);
		echo '<script language="javascript">';
		echo 'alert("ID '.$id.' apagado com sucesso")';
		echo '</script>';
		}
	catch(PDOException $e)
		{
			echo '<script language="javascript">';
			echo 'alert($sql . "<br> Não foi possível apagar, erro: " . $e->getMessage())';
			echo '</script>';
		}

	$conn = null;
}



?>