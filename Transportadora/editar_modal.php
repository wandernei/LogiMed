<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Modal Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--BOOTSTRAP -->
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!--DATATABLE -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
        <link rel="stylesheet" href="modal.css">

    </head>

    <body>
        <div class="container">
            <!-- Modal-->
            <div class="modal fade" id="editar" role="dialog">
                <div class="modal-dialog modal-sm">
                    <!-- Content STARTS HERE-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Editar Transportadora</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form" action="/action_page.php">

                                <div class="form-group">
                                    <label for="nome">Transportadora:</label>
                                    <input type="text" class="form-control" id="nome" placeholder="Digite o nome" name="nome" autofocus>
                                </div>

                                <div class="form-group">
                                    <label for="preco">preço:</label>
                                    <input type="text" class="form-control" id="preco" placeholder="Digite o preço" name="preco">
                                </div>

                                <div class="form-group">
                                    <label for="avaliacao">Avaliação:</label>
                                    <input type="text" class="form-control" id="avaliacao" placeholder="Digite o avaliação" name="avaliacao">
                                </div>

                                <div class="form-group">
                                    <label for="zona_atendimento">Zona de Atendimento:</label>
                                    <input type="text" class="form-control" id="zona_atendimento" placeholder="Digite a Zona de Atendimento" name="zona_atendimento">
                                </div>

                                <div class="checkbox">
                                    <label><input type="checkbox" name="ativo" checked>Ativo?</label>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-warning pull-left"><span class="glyphicon glyphicon-off"></span> Salvar</button>
                            <button type="submit" class="btn btn-danger btn-default pull-right" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancelar</button>
                        </div>
                    </div>

                </div>
            </div>
            <!-- Modal ENDS HERE -->
        </div>
    </div>
</body>

</html>