<%-- 
    Document   : customerpage
    Created on : Aug 22, 2017, 2:33:37 PM
    Author     : kasper
--%>

<%@page import="PresentationLayer.calculator"%>
<%@page import="DBAccess.UserMapper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer home page</title>
    </head>
    <body>
        <h1>velkommen til vores fantastiske lego shop</h1>
        <%
            calculator calc = new calculator();
            if (UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).isEmpty()) {
        %> <p> du har ingen tideligere ordre</p>
        <%} else {%>
        <table class="table table-striped">
            <tr>
                <th>ordre id</th>
                <th>ordre</th> 
                <th>store</th>
                <th>mellem</th>
                <th>små</th>
            </tr>
            <%
                for (int i = 0; i < UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).size(); i++) {
            %> 
            <tr>
                <th> <% out.println(UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).OrderID); %> </th>
                <th><% out.println(UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).højde + "*" + UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).brede + "*" + UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).længde); %></th> 
                <th><% out.println(calc.FullHouse(UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).højde, UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).brede, UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).længde).get(0)); %></th>
                <th><% out.println(calc.FullHouse(UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).højde, UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).brede, UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).længde).get(1)); %></th>
                <th><% out.println(calc.FullHouse(UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).højde, UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).brede, UserMapper.GetUserOrders(session.getAttribute("UserID").toString()).get(i).længde).get(2)); %></th>
            </tr>
            <% }

                }
            %>
        </table>>

        <a href="FrontController?command=builder">byg et nyt hus</a>
    </body>
</html>
