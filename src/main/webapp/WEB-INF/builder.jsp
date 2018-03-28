<%-- 
    Document   : Builder
    Created on : 20-03-2018, 14:11:50
    Author     : sebastian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Builder</h1>
        
        <form action="FrontController" method="POST">
            <input type="hidden" name="command" value="shoppingcard">
            højde:<br>
            <input type="text" name="height"><br>

            brede:<br>
            <input type="text" name="width"><br>

            længde:<br>
            <input type="text" name="length"><br>
            antal:<br>
            <input type="text" name="antal"><br>
            <br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
