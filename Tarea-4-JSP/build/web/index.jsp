<%-- 
    Document   : index
    Created on : 28/09/2024, 9:39:16 a. m.
    Author     : Barillas
--%>
<%@page import="java.util.HashMap"%>
<%@page import="modelo.Empleado" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Empleados</h1>
        <div class="container" >
            <form action="sr_empleado" method="post" class ="form-group" >
                <label for="lbl_id">ID<b>Codigo:</b></label>
                <input type="text" name="txt_id" id="txt_id" class="form-control" readonly>
                <label for="lbl_mobres"><b>Nombres:</b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: Nombre 1 Nombre 2" required >
                <label for="lbl_apellidos"><b>Apellidos:</b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ejemplo: Apellido 1 Apellidos 2" required >
                <label for="lbl_direccion"><b>Direccion:</b></label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: # Casa Calle Zona Ciudad" required >
                <label for="lbl_telefono"><b>Telefono:</b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 5050-5050" required >
                <label for="lbl_fn"><b>Fecha Nacimiento</b></label>
                <input type="date" name="txt_fn" id="txt_telefono" class="form-control" required >
                <label for="lbl_sangre"><b>Tipo de Sangre</b></label>
                <select name="drop_sangre" id="drop_sangre" class="form-control">
                    <%
                        Empleado empleado = new Empleado();
                        HashMap<String,String> drop = empleado.drop_sangre ();
                        for (String i: drop.keySet()){
                            out.println("<option value=`" + i +"` >" + drop.get("i") + "</option>");
                        }
                        
                    %>
                    
                    </select>
                <br>
                <button name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary btn-lg">Agregar</button>
                <button name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-primary btn-lg">Modificar</button>
                
            </fom>
            
            </div>
                
        
    </body>
</html>
