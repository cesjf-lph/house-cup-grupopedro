<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : lista-aluno
    Created on : 22/11/2016, 21:41:52
    Author     : pedroabdalla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #menu{
                background-color: rgb(240, 240, 240);
                border: 1px solid rgb(217, 217, 217);
                display: inline-block;
                width: 100%;
            }
            #menu div{
                padding: 5px;
                border-right: 1px solid rgb(217, 217, 217);
                float: left;
            }
            #menu div:hover{
                background-color: rgb(110, 165, 0);
                color: white;
            }
            #menu .ativo{
                background-color: rgb(110, 165, 0);
                color: white;
            }
            #menu .ativo a{
                color: white;
            }
            #menu div a{
                color: black;
            }
            #menu a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div id="menu">
            <div><a href="novo.html">NOVO ALUNO</a></div>
            <div><a href="listar-alunos.html">LISTAR GRUPOS</a></div>
            <div class="ativo"><a href="lista-tudo.html">LISTAR TUDO</a></div>
        </div>
        <h1>Hello World!</h1>
        <c:forEach var="soma" items="${somanotas}">
        <li>${soma[0]}: ${soma[1]}</li>
        </c:forEach>
</body>
</html>
