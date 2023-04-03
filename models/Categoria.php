<?php

//Requerimos acceso a la clase conexion
require_once "Conexion.php";


class Categoria extends Conexion{

    //Objeto que almacena la conexion que obtenemos
    private $acceso;

    //Constructor
    public function __construct(){
        $this->acceso = parent::getConexion();
    }

    public function listarCategoria(){
        try{
            //Preparamos la consulta
            $consulta = $this->acceso->prepare("CALL spu_categories_list()");

            //Ejecutamos la consulta
            $consulta->execute();

            //Almacenamos el resultado de la consulta en $datos
            //fetchAll = todos los registros
            //FETCH_ASSOC = constante que representa a arry asociativo
            $datos = $consulta->fetchALL(PDO::FETCH_ASSOC);

            //Devolver los datos
            return $datos;
        }
        catch(Exception $e){
            die($e->getMessage());
        }
    }
}

?>