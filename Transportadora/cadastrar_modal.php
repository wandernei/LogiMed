<!DOCTYPE html>
<html lang="en">

<head>
    <title>Modal Example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--BOOTSTRAP -->
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="modal.css">
</head>

<body>
    <div class="container">
        <!-- Modal-->
        <div class="modal fade" id="cadastrar" role="dialog">
            <div class="modal-dialog modal-sm">
                <!-- Content STARTS HERE-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Cadastrar Transportadora</h4>
                    </div>
                    <div class="modal-body">

                        <form role="form">
                            <div class="form-group">
                                <label for="nome">Transportadora:</label> <span class="glyphicon glyphicon-user"></span>
                                <input type="text" class="form-control" id="nome" placeholder="Digite o nome" name="nome"  autofocus>
                            </div>
                            <div class="form-group">
                                <label for="preco">Preço:</label>
                                <input type="text" class="form-control" id="preco" placeholder="Digite o preço" name="preco">
                            </div>
                            <div class="form-group">
                                <label for="avaliacao">Avaliação:</label>
                                <input type="text" class="form-control" id="avaliacao" placeholder="Digite o Avaliação" name="avaliacao">
                            </div>
                            <div class="form-group">
                                <label for="zona_atendimento">Zona de Atendimento:</label>
                                <input type="text" class="form-control" id="zona_atendimento" placeholder="Digite a Zona de Atendimento" name="zona_atendimento">
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" name="ativo" value="" checked>Ativo?</label>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success pull-left"><span class="glyphicon glyphicon-off"></span> Salvar</button>
                        <button type="submit" class="btn btn-danger btn-default pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancelar</button>
                    </div>

                </div>
            </div>
            <!-- Modal ENDS HERE -->
        </div>
    </div>
</body>

</html>