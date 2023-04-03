<?php

//Requerimos acceso al modelo
require_once '../models/Subcategoria.php';

//Verificamos si existe un objeto 
if(isset($_GET['operacion'])){


    $subcategoria = new Subcategoria();

    if($_GET['operacion'] == 'listarSubcategoria'){
        $dataSubcategoria = $subcategoria->listarSubcategoria();
        echo json_encode($dataSubcategoria);
    }
}

?>