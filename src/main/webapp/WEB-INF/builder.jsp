<%-- 
    Document   : Builder
    Created on : 20-03-2018, 14:11:50
    Author     : sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Builder</h1>
        <form action="FrontController" method="POST">
            <input type="hidden" name="command" value="shoppingcard">
            højde:<br>
            <input type="text" name="højde"><br>
            
            brede:<br>
            <input type="text" name="brede"><br>
            
            længde:<br>
            <input type="text" name="længde"><br>
            antal:<br>
            <input type="text" name="antal"><br>
            <br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
