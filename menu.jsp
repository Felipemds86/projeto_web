<%-- 
    Document   : menu
    Created on : 09/04/2021, 10:01:00
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="projetotestefelipedesktop.models.beans.Usuario" %>
<%@page import="projetotestefelipedesktop.controllers.ControllerUsuario" %>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario uEntrada = new Usuario(login,senha);
    ControllerUsuario contUsu = new ControllerUsuario();
    boolean valida = contUsu.valida(uEntrada);
%>

<html>
    <title>JSP Page</title>
    <body>
    <div class="container"/>
    <h1>MENU</h1> <br>
    <% if(valida) { %> 
        <h1>Usuario</h1> 
        <a href="../usuario/buscaUsuario.jsp">Busca</a> 
        | <a href="../usuario/listaUsuario.jsp">Lista</a> 
        | <a href="../usuario/inseriUsuario.jsp">Inseri</a>
    <% } else { %> 
        <h1>Usuário Invalido</h1> 
    <% } %> 
    </div>
   </body>
</html>