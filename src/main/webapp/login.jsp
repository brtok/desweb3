<%-- 
    Document   : login
    Created on : 19/04/2015, 20:45:34
    Author     : Bruno
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:useBean class="pratica.jsp.loginBean" id="login" scope="session"/>
<jsp:setProperty name="login" property="*" />


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
      <title>Login</title>
   </head>
   <body>
      <form method="post" action="/pratica-jsp/login.jsp">
         Código: <input type="text" name="login"/><br/>
         Nome: <input type="password" name="senha"/><br/>
         Perfil: <select name="perfil">
                     <option value="1">Cliente</option>
                     <option value="2">Gerente</option>
                     <option value="3">Administrador</option>
                 <select>
         <input type="submit" value="Enviar"/>
      </form>
   </body>
</html>

<% 
    if (request.getMethod().equals("POST")) {
        if (login.getLogin().equals(login.getSenha())) {
%>
            <div style="color:blue;">
                <%
                String perfil = "";
                switch(login.getPerfil()){
                    case 1:
                        perfil = "Cliente";
                        break;
                    case 2:
                        perfil = "Gerente";
                        break;
                    case 3:
                        perfil = "Administrador";
                        break;
                }
                out.println(perfil + ", login bem sucedido, para " + login.getLogin() + " às " + login.getHoraServidor());%>
            </div>
<%
        } else{
%>
            <div style="color:red;"><em>Acesso negado</em></div>
<%   
        }
    }
%>
