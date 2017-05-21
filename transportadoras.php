<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Transportadoras</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--BOOTSTRAP -->
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	   	
        <!--DATATABLE -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script> 
        <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script> 

        <script>
            $(document).ready(function () {
                $('#transportadoras_table').DataTable({"order": [[3, "desc"]]});
            });
        </script>

        <!-- INCLUDES-->
        <?php include "Connection/mysqlconnector.php"; ?>
        
        <?php include "Transportadora/cadastrar_modal.php"; ?>
        <?php include "Transportadora/editar_modal.php"; ?>
        <?php include "Transportadora/apagar_modal.php"; ?>
        
    </head>
    <body>
        <?php include "header.php"; ?>
        <div class="container">
          <!-- <iframe src="index.php" style="border:none;width:600px;height:200px;"></iframe> -->

                <div class="form-inline" style="text-align:right;">
                    <div class="form-group" style="width:100%;">
			<a class="col-sm-1" href="" style="font-size:24px;">Transportadoras</a>
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#cadastrar" style="width:100px;">Cadastrar</button>
                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#editar" style="width:100px;">Editar</button>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#apagar" style="width:100px;">Apagar</button>
                        <br><br>
                    </div>
                </div>


            <table id="transportadoras_table" class="table table-striped table-borderedwidth:100%;">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>Preco</th>
                        <th>Avaliacao</th>
                        <th>Zona de Atendimento</th>
                        <th>Ativo?</th>
                        <!--<th>Operacoes</th>-->
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $html = "";
                    $sql = 'SELECT transportadora.id, nome, preco, avaliacao, zona_atendimento.descricao as zonaatendimento, habilitado FROM transportadora, zona_atendimento WHERE zona_atendimento.id = zonaatendimento_id;';
                    foreach ($conn->query($sql) as $row) {
                        $html .= '<tr>' .
                        '<td>' . $row['id'] . '</td>' .
                        '<td>' . $row['nome'] . '</td>' .
                        '<td>R$' . str_replace('.',',',$row['preco']) . '</td>' .
                        '<td>' . $row['avaliacao'] . '</td>' .
                        '<td>' . $row['zonaatendimento'] . '</td>';
                        
                        if($row['habilitado'] == 0){
                            $html .= '<td>Nao</td>';
                        }
                        else{
                            $html .= '<td>Sim</td>';
                        }
                        
                        //inserir aqui, dentro da mesma <td>, botoes para apagar e editar, a serem usados com as classes modal
                        //ver como fazer isso
                        //ambas precisam receber o ID da row, para entao executar a operaçao com o ID providenciado, entao preenchendo o formulario modal correspondente
                        
                        $html .= '</tr>';
                    }
                    echo $html;
                    ?>
                </tbody>
            </table>
        </div>

    </body>
</html>
