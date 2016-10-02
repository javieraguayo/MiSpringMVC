<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>

    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body ng-app >
        <div class="container">
            <h1> Formulario de busqueda</h1>

            <form role= "form" action="ver.htm" name = "forma" method="post"><!--ver htm accedo -->
                <div class="form-group" ng-class="{'has-error': forma.txtRut.$invalid , 'has-success': forma.txtRut.$valid}"><!--valido en color rojo input permite cambiar el stilo del html-->
                    <label for="inputRut" >Rut</label><!--stilo de error de boostrap 'has'-->
                    <input id = "inputRut" type="number" class="form-control" placerholer ="Rut" name= "txtRut" ng-model="usuario.rut" required>
                </div>

                    <div ng-show="forma.txtRut.$dirty && forma.txtRut.$invalid"><!--ocultamos los campos y validamos -->
                        <p class="help-block text-danger" ng-show="forma.txtRut.$error.required">Campo Obligatorio</p><!--solo si hay error -->
                        <p class="help-block text-danger" ng-show="forma.txtRut.$error.number">Rut Invalido</p><!--requiere un numero -->
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="aceptoRut" ng-model="usuario.acepto" required>Acepto
                        </label>   
                    </div>
                    <button class="btn btn-success" ng-disabled="forma.$invalid">Buscar</button><!--desabilitamos boton con ng-disable forma invalida oculto  -->
            </form> 
        </div>
    </body>
</html>
