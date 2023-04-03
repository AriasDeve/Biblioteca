<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data library</title>
    <!-- Booststrap 4.6 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <!-- CSS datatable -->
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <!-- LightBox -->
    <link rel="stylesheet" href="../vendor/lightbox/css/lightbox.min.css">
    <!-- DataTable Responsive -->
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.dataTables.min.css">
</head>
<body>

<!-- Zona para componentes HTML -->   
<div style="width: 90%; margin:auto" class="mt-2">
    <h2 class="text-center mb-4">Módulo de Libros</h2>
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-libros" id="mostrar-modal-registro">Registrar libro</button>
        
        <a href="../index.html" class="btn btn-primary">Volver</a>
        <hr>
        <div class="card-body">
            <table class="table display responsive nowrap" id="tabla-libros">
            <colgroup>
            <col width="1%">
            <col width="10%">
            <col width="5%">
            <col width="5%">
            <col width="4%">
            <col width="25%">
            <col width="5%">
            <col width="5%">
            <col width="10%">
            <col width="10%">
            <col width="10%">
            <col width="10%">
            </colgroup>
                <thead class="table-dark">
                    
                    <tr>
                        <th>#</th>
                        <th>Categoría</th>
                        <th>Sub categoría</th>
                        <th>Código</th>
                        <th>Cantidad</th>
                        <th>Descripción</th>
                        <th>Autor</th>
                        <th>Estado</th>
                        <th>Ubicación</th>
                        <th>PDF de descarga</th>
                        <th>Portada</th>
                        <th>Comandos</th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
</div>

<!-- Zona Modales -->
<div class="modal fade" data-backdrop="static" data-keyboard="false" id="modal-libros" tabindex="-1" aria-labelledby="titulo-modal-libros" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header bg-primary text-light">
        <h5 class="modal-title" id="titulo-modal-libros">Registrar Libros</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span class="text-light" aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="" id="formulario-libros" autocomplete="off">
            <!-- Creación de controles -->
            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="categoria">Categoría:</label>
                    <select name="categoria" id="categoria"class="form-control form-control-sm">
                        <option value="">Seleccione:</option>
                    </select>
                </div>

                <div class="col-md-6 form-group">
                    <label for="subcategoria">Sub Categoría:</label>
                    <select name="subcategoria" id="subcategoria"class="form-control form-control-sm">
                        <option value="">Seleccione:</option>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-md-3 form-group">
                    <label for="cantidad">Cantidad:</label>
                    <input type="text" id="cantidad" class="form-control form-control-sm">
                </div>

                <div class="col-md-9 form-group">
                    <label for="descripcion">Descripción:</label>
                    <input type="text" id="descripcion" class="form-control form-control-sm">
                </div>
            </div>

            <div class="row">
                <div class="col-md-9 form-group">
                    <label for="autor">Autor:</label>
                    <input type="text" id="autor" class="form-control form-control-sm">
                </div>

                <div class="col-md-3 form-group">
                    <label for="estado">Estado:</label>
                    <input type="text" id="estado" class="form-control form-control-sm">
                </div>
            </div>

            <div class="form-group">
                <label for="ubicacion">Ubicación:</label>
                <input type="text" id="ubicacion"class="form-control form-control-sm">
            </div>

            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="url">PDF descarga:</label>
                    <input type="file" id="url" accept=".pdf" class="form-control-file">
                </div>

                <div class="col-md-6 form-group">
                    <label for="portada">Portada:</label>
                    <input type="file" id="portada" accept=".jpg" class="form-control-file">
                </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="cancelar-modal" class="btn btn-sm btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" id="guardar-libro" class="btn btn-sm btn-primary">Guardar</button>
      </div>
    </div>
  </div>
</div>



<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<!-- Lightbox -->
<script src="../vendor/lightbox/js/lightbox.min.js"></script>
<!-- font -->
<script defer src="https://kit.fontawesome.com/7a0163df78.js" crossorigin="anonymous"></script>
<!-- Boostrap 4.6 -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<!-- Datatable -->
<script src="//cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<!-- DataTable Responsive -->
<script src="https://cdn.datatables.net/responsive/2.3.0/js/dataTables.responsive.min.js"></script>

<!-- Mis funciones y eventos javascript -->

<script>
    $(document).ready(function(){
        var idbook = 0;
        var datosNuevos = true;



        //Mostrar todos los registros en el DataTable
        // download="documento.pdf"
        function mostrarLibros(){
            $.ajax({
                url:'../controllers/biblioteca.controller.php',
                type:'GET',
                data:'operacion=listarLibros',
                success: function(result){
                let registros = JSON.parse(result);
                let nuevaFila = ``;

                let tabla = $("#tabla-libros").DataTable();
                tabla.destroy();

                $("#tabla-libros tbody").html("");
                registros.forEach(registro => {
                portada = (registro['frontpage'] == null) ? 'sin-imagen.png' : registro['frontpage'];
                pdf = (registro['url'] == null) ? 'sin-pdf.png' : registro['url'];
                    
                    nuevaFila = `
                    <tr>
                        <td>${registro['idbook']}</td>
                        <td>${registro['categoryname']}</td>
                        <td>${registro['subcategoryname']}</td>
                        <td>${registro['codes']}</td>
                        <td>${registro['amount']}</td>
                        <td>${registro['descriptions']}</td>
                        <td>${registro['author']}</td>
                        <td>${registro['state']}</td>
                        <td>${registro['locationresponsible']}</td>
                        <td>
                            <a target='_blank' rel='noopener noreferrer' href='PDF/${pdf}'> 
                            <i class="fa-sharp fa-solid fa-file-pdf fa-xl" style="color: #f71823;"></i>
                            </a>
                        </td>

                        <td>
                            <a href='frontpage/${portada}'
                                data-idbook='${registro['idbook']}'
                                data-lightbox='demo'
                                data-title='${registro['descriptions']}'
                                class='btn btn-success btn-sm'
                                title='Mostrar portada del libro'>
                                <i class='fa-solid fa-eye'></i>
                            </a>
                        </td>
                        <td>
                            <a href='#' data-idbook='${registro['idbook']}' class = ' eliminar'><i class="fa-solid fa-trash fa-2xl" style="color: #e60000;"></i></a>
                            <a href='#' data-idbook='${registro['idbook']}' class = ' editar'><i class="fa-solid fa-pen-to-square fa-2xl" style="color: #00ffaa;"></i></a>
                        </td>
                    </tr>
                    `;
                    $("#tabla-libros tbody").append(nuevaFila);
                });

                    $('#tabla-libros').DataTable({
                        language:{ 
                        url: '//cdn.datatables.net/plug-ins/1.12.1/i18n/es-MX.json'
                        }
                    });
                }
            });
        }

        function listarCategorias(){
            $.ajax({
                url:'../controllers/categoria.controller.php',
                type:'GET',
                data:'operacion=listarCategoria',
                success: function(result){
                    let registros = JSON.parse(result);
                    let elementosLista = ``;
                    if(registros.length > 0){
                        //Asignamos un primer elemento, que será el que se muestre por defecto
                        elementosLista = `<option selected>Seleccione</option>`;

                        //Recorremos toda la colección
                        registros.forEach(registro => {
                            //Creamos la etiqueta <option> con el valor requerido
                            elementosLista += `<option value=${registro['idcategorie']}>${registro['categoryname']}</option>`;
                        });
                    }else{
                        //En caso no tengamos datos
                        elementosLista = `<option>No hay datos asignados</option>`;
                    }
                    //Agregando los elementos al <select>
                    $("#categoria").html(elementosLista);
                }
            });
        }

        function listarSubcategorias(){
            $.ajax({
                url:'../controllers/subcategoria.controller.php',
                type:'GET',
                data:'operacion=listarSubcategoria',
                success: function(result){
                    let registros = JSON.parse(result);
                    let elementosLista = ``;
                    if(registros.length > 0){
                        //Asignamos un primer elemento, que será el que se muestre por defecto
                        elementosLista = `<option selected>Seleccione</option>`;

                        //Recorremos toda la colección
                        registros.forEach(registro => {
                            //Creamos la etiqueta <option> con el valor requerido
                            elementosLista += `<option value=${registro['idsubcategorie']}>${registro['subcategoryname']}</option>`;
                        });
                    }else{
                        //En caso no tengamos datos
                        elementosLista = `<option>No hay datos asignados</option>`;
                    }
                    //Agregando los elementos al <select>
                    $("#subcategoria").html(elementosLista);
                }
            });
        }

        function reiniciarFormulario(){
            $("#formulario-libros")[0].reset();
        }

        function abrirModalRegistro(){
            datosNuevos = true;

            //Le indicimas el titulo del modal y su clase
            $(".modal-header").removeClass("bg-secondary");
            $(".modal-header").addClass("bg-primary");
            $("#titulo-modal-libros").html("Registrar Libros");
            reiniciarFormulario();
        }

        //Registrar enviando Binario (PDF, JPG, XLSX, DOCX, ETC)
        function registrarLibrosBin(){

            var formdata = new FormData();

                formdata.append("idcategorie", $("#categoria").val());
                formdata.append("idsubcategorie", $("#subcategoria").val());
                formdata.append("amount", $("#cantidad").val());
                formdata.append("descriptions", $("#descripcion").val());
                formdata.append("author", $("#autor").val());
                formdata.append("state", $("#estado").val());
                formdata.append("locationresponsible", $("#ubicacion").val());

                formdata.append("url", $("#url")[0].files[0]);
                formdata.append("frontpage", $("#portada")[0].files[0]);
              
                    if (datosNuevos){
                        formdata.append("operacion","registrarLibrosBin");

                    }else{
                        formdata.set("operacion","actualizarLibro");
                        for(let val of formdata.values())
                        {
                            console.log(val);
                        }
                    }

                                
                if (confirm("¿Estas seguro de guardar?")){
                       //Enviar datos por Ayax
                    $.ajax({
                        url: '../controllers/biblioteca.controller.php',
                        type:'POST',
                        data:formdata,
                        contentType: false,
                        processData: false,
                        cache: false,
                        success: function(result){
                            console.log(result);
                            if(result == ""){
                                alert("Grabado correctamente");
                                reiniciarFormulario();
                                mostrarLibros();
                                $("#modal-libros").modal("hide");
                            }
                        }
                    });
                }
        }   

        $("#tabla-libros tbody").on("click", ".eliminar", function(){
            //Almacenamos la PK en una variable
            let idbook = $(this).data("idbook");

            if (confirm("¿Está seguro de eliminar el registro?")){
                $.ajax({
                    url: '../controllers/biblioteca.controller.php',
                    type: 'GET',
                    data: {'operacion':'eliminarLibro','idbook':idbook},
                    success: function(result){
                        if(result == ""){
                            idbook = ``;
                            mostrarLibros();
                        }
                    }
                });
            }
        });

        $("#tabla-libros tbody").on("click", ".editar", function(){
            idbook = $(this).data("idbook");
                $.ajax({
                    url: '../controllers/biblioteca.controller.php',
                    type: 'GET',
                    dataType: 'JSON',
                    data: {
                        'operacion' : 'getLibro', 
                        'idbook': idbook
                    },
                    success: function(result){
                        $("#categoria").val(result['idcategorie']);
                        $("#subcategoria").val(result['idsubcategorie']);
                        $("#cantidad").val(result['amount']);
                        $("#descripcion").val(result['descriptions']);
                        $("#autor").val(result['author']);
                        $("#estado").val(result['state']);
                        $("#ubicacion").val(result['locationresponsible']);
                        $("#url")[0].files[0];
                        $("#portada")[0].files[0];

                        //Cambiando configuración modal
                        $("#titulo-modal-libros").html("Actualizar datos");
                        $(".modal-header").removeClass("bg-primary");
                        $(".modal-header").addClass("bg-secondary");

                        $("#modal-libros").modal("show");
                        datosNuevos = false;
                        console.log(result);
                    }
                });
        });

        //Eventos
        $("#mostrar-modal-registro").click(abrirModalRegistro);
        $("#guardar-libro").click(registrarLibrosBin);
        $("#cancelar-modal").click(reiniciarFormulario);


        //Funciones de carga automatica
        mostrarLibros();
        listarCategorias();
        listarSubcategorias();

    });
</script>

</body>
</html>