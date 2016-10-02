<%-- 
    Document   : Exiito
    Created on : 01-10-2016, 20:52:15
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ok !</h1>
        <p> id:    (${requestScope.auto.id})</p>
        <p> Marca: (${requestScope.auto.marca}) </p>
        <p> Color: (${requestScope.auto.color})</p>
    </body>
</html>
