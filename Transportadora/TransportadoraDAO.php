<?php
include "mysqlconnector.php";
 $id = $_POST["id"];
$ativo = $_POST["ativo"];

class TransportadoraDAO{
public $table = TRANSPORTADORA;

public function cadastrar($nome, $preco, $avaliacao, $zona_atendimento, $ativo){
try {
    //$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO ".$table." (nome, preco, avaliacao,zona_atendimento,ativo)
    VALUES (".$nome.", ".$preco.", ".$avaliacao.",".$zona_atendimento.",".$ativo.")";
    // use exec() because no results are returned
    $conn->exec($sql);
    echo "Cadastrado corretamente.";
    }
catch(PDOException $e)
    {
    echo "Erro ao cadastrar: ". $sql . "<br>" . $e->getMessage();
    }

$conn = null;
}

public function selecionar($id){
		try {
		//$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$stmt = $conn->prepare("SELECT * FROM ".$table." WHERE ID=".$id); 
		$stmt->execute();

		// set the resulting array to associative
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
		foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) { 
			echo $v;
		}
	}
	catch(PDOException $e) {
		echo "Erro ao selecionar: " . $e->getMessage();
	}
	$conn = null;
}

public function editar($id, $nome, $preco, $avaliacao, $zona_atendimento, $ativo){
	try {
		//$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		// set the PDO error mode to exception
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		$sql = "UPDATE ".$table."
				SET NOME = '".$nome."', PRECO= ".$preco.", AVALIACAO=".$avaliacao.", ZONA_ATENDIMENTO='".$zona_atendimento."', HABILITADO=".$ativo."
				WHERE ID =".$id;

		// Prepare statement
		$stmt = $conn->prepare($sql);

		// execute the query
		$stmt->execute();

		// echo a message to say the UPDATE succeeded
		echo $stmt->rowCount() . " atualizado com sucesso.";
		}
	catch(PDOException $e)
		{
		echo "Erro ao atualizar: ".$sql . "<br>" . $e->getMessage();
		}

	$conn = null;
}

public function apagar($id){
	try {
		//$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		// set the PDO error mode to exception
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		// sql to delete a record
		$sql = "DELETE FROM ".$table." WHERE ID=".$id.";";

		// use exec() because no results are returned
		$conn->exec($sql);
		echo '<script language="javascript">';
		echo 'alert("ID '.$id.' apagado com sucesso")';
		echo '</script>';
		}
	catch(PDOException $e)
		{
			echo '<script language="javascript">';
			echo 'alert($sql . "<br> Nao foi possivel apagar, erro: " . $e->getMessage())';
			echo '</script>';
		}

	$conn = null;
}

}

