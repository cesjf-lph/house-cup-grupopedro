
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar alunos</title>
        <style>
            #menu{
                background-color: rgb(240, 240, 240);
                border: 1px solid rgb(217, 217, 217);
                height: 30px;
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
            lista-topo {
                width: 100%;
                margin: 20px;
                text-align: center;
                font-weight: bold;
                font-size: 18pt;
            }
            .lista-grupo {
                float: left;
                border: 1px solid #CCC;
                margin: 5px;
            }
            .lista-grupo tr td{
                padding: 5px;
                text-align: center;
                border-bottom: 1px solid #CCC;
            }
            .lista-grupo tr:first-child td{
                background-color: rgb(238, 238, 238);
                border-bottom: 1px solid rgb(204, 204, 204);
            }
            .lista-grupo tr:last-child td{
                 border-bottom: none;
            }
            .lista-grupo tr:nth-child(1) {
                 border-bottom: none;
            }
            .lista-grupo-aluno:hover{
                cursor: pointer;
                background-color: #EEE;
            }
        </style>
    </head>
    <body>
        <div id="menu">
            <div><a href="http://localhost:8080/house-cup-grupopedro/novo.html">NOVO ALUNO</a></div>
            <div class="ativo"><a href="#">LISTAR GRUPOS</a></div>
        </div>
        <div class="lista-topo">Lista de Grupos</div>
        <table class="lista-grupo" cellspacing="0" cellpadding='0'>
            <tr>
                <td colspan="5">Grupo 1</td>
            </tr>
            <tr>
                <td>Aluno</td>
                <td>Grupo</td>
                <td>Nota</td>                
            </tr>
            <c:forEach items="${aluno}" var="aluno">
                 <c:if test="${aluno.grupo == 1}">
                    <tr class="lista-grupo-aluno" onclick="window.location='http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}'">
                        <td>${aluno.nome}</td>
                        <td>${aluno.grupo}</td>
                        <td>${aluno.nota}</td>                                 
                    </tr>
                </c:if>
            </c:forEach>
        </table>
        <table class="lista-grupo" cellspacing="0" cellpadding='0'>
            <tr>
               <td colspan="5">Grupo 2</td>
            </tr>
            <tr>
               <td>Aluno</td>
               <td>Grupo</td>
               <td>Nota</td>                
            </tr>
            <c:forEach items="${aluno}" var="aluno">
                <c:if test="${aluno.grupo == 2}">
                   <tr class="lista-grupo-aluno" onclick="window.location='http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}'">
                       <td>${aluno.nome}</td>
                       <td>${aluno.grupo}</td>
                       <td>${aluno.nota}</td>                                 
                   </tr>
                </c:if>
            </c:forEach>
        </table>
        <table class="lista-grupo" cellspacing="0" cellpadding='0'>
            <tr>
                <td colspan="5">Grupo 3</td>
            </tr>
                <tr>
                    <td>Aluno</td>
                    <td>Grupo</td>
                    <td>Nota</td>                
                </tr>
            <c:forEach items="${aluno}" var="aluno">
                <c:if test="${aluno.grupo == 3}">
                    <tr class="lista-grupo-aluno" onclick="window.location='http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}'">
                        <td>${aluno.nome}</td>
                        <td>${aluno.grupo}</td>
                        <td>${aluno.nota}</td>                                 
                    </tr>
                </c:if>
            </c:forEach>
        </table>
        <table class="lista-grupo" cellspacing="0" cellpadding='0'>
            <tr>
               <td colspan="5">Grupo 4</td>
            </tr>
            <tr>
               <td>Aluno</td>
               <td>Grupo</td>
               <td>Nota</td>                
            </tr>             
            <c:forEach items="${aluno}" var="aluno">    
                <c:if test="${aluno.grupo == 4}">
                   <tr class="lista-grupo-aluno" onclick="window.location='http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}'">
                      <td>${aluno.nome}</td>
                      <td>${aluno.grupo}</td>
                      <td>${aluno.nota}</td>                                 
                    </tr>
                </c:if>
            </c:forEach>
        </table>
    </body>
   
</html>
