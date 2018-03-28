<%-- 
    Document   : shoppingcard
    Created on : 20-03-2018, 14:28:51
    Author     : sebastian
--%>

<%@page import="FunctionLayer.Testclass"%>
<%@page import="PresentationLayer.calculator"%>
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
        <%

            calculator calc = new calculator();
        session.setAttribute("height", request.getParameter("height"));
        session.setAttribute("length", request.getParameter("length"));
        session.setAttribute("width", request.getParameter("width"));
        %>
        <h1>shopping card</h1>

        <table style="width:100%">
            <tr>
                <th>Ordre</th>
                <th>Stor</th> 
                <th>Mellem</th>
                <th>små</th>
            </tr>
            <tr>
                <th><% out.println(request.getParameter("height") + "*" +  request.getParameter("width") + "*" + request.getParameter("length")); %> </th>
                <th><% out.println(calc.FullHouse(Integer.parseInt(request.getParameter("height")), Integer.parseInt(request.getParameter("width")), Integer.parseInt(request.getParameter("length"))).get(0)); %></th> 
                <th><% out.println(calc.FullHouse(Integer.parseInt(request.getParameter("height")), Integer.parseInt(request.getParameter("width")), Integer.parseInt(request.getParameter("length"))).get(1)); %></th>
                <th><% out.println(calc.FullHouse(Integer.parseInt(request.getParameter("height")), Integer.parseInt(request.getParameter("width")), Integer.parseInt(request.getParameter("length"))).get(2)); %></th>
            </tr>

        </table>
<br>

        <form action="FrontController" method="POST">
            <input type="hidden" name="command" value="PerformOrder">
            <input type="submit" value="order">
        </form>
<br>
        <form action="FrontController" method="POST">
            <input type="hidden" name="command" value="builder">
            <input type="submit" value="ret">
        </form>




    </body>
</html>
