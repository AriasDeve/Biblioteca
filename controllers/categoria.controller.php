<?php

//Requerimos acceso al modelo
require_once '../models/Categoria.php';

//Verificamos si existe un objeto 
if(isset($_GET['operacion'])){


    $categoria = new Categoria();

    if($_GET['operacion'] == 'listarCategoria'){
        $dataCategoria = $categoria->listarCategoria();
        echo json_encode($dataCategoria);
    }
}

?>