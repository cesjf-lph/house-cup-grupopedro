
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar alunos</title>
    </head>
    <body>
        <a href="http://localhost:8080/house-cup-grupopedro/novo.html">Novo Aluno</a>
        <h1>Listar Alunos</h1>
        <table>
            <thead>
                <tr>Grupo 1</tr>
                <tr>
                    <th>aluno</th>
                    <th>grupo</th>
                    <th>nota</th>                
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${aluno}" var="aluno">
                     <c:if test="${aluno.grupo == 1}">
                        <tr>
                            <td><a href="http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}">${aluno.nome}</a></td>
                            <td>${aluno.grupo}</td>
                            <td>${aluno.nota}</td>                                 
                        </tr>
                    </c:if>
                </c:forEach>
            </tbody>
        </table>
         <table>
            <thead>
                <tr>Grupo 2</tr>
                <tr>
                    <th>aluno</th>
                    <th>grupo</th>
                    <th>nota</th>                
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${aluno}" var="aluno">
                    <c:if test="${aluno.grupo == 2}">
                        <tr>
                            <td><a href="http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}">${aluno.nome}</a></td>
                            <td>${aluno.grupo}</td>
                            <td>${aluno.nota}</td>                                 
                        </tr>
                    </c:if>
                </c:forEach>
            </tbody>
        </table>
         <table>
            <thead>
                    <tr>Grupo 3</tr>
                    <tr>
                        <th>aluno</th>
                        <th>grupo</th>
                        <th>nota</th>                
                    </tr>
            </thead>
            <tbody>
                <c:forEach items="${aluno}" var="aluno">
                    <c:if test="${aluno.grupo == 3}">
                        <tr>
                            <td><a href="http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}">${aluno.nome}</a></td>
                            <td>${aluno.grupo}</td>
                            <td>${aluno.nota}</td>                                 
                        </tr>
                    </c:if>
                </c:forEach>
            </tbody>
        </table>
         <table>
            <thead>
                <tr>
                    <th>aluno</th>
                    <th>grupo</th>
                    <th>nota</th>                
                </tr>
            </thead>
            <tbody>
                <tr>Grupo 4</tr>
                <c:forEach items="${aluno}" var="aluno">    
                    <c:if test="${aluno.grupo == 4}">
                        <tr>
                           <td><a href="http://localhost:8080/house-cup-grupopedro/aluno.html&id=${aluno.id}">${aluno.nome}</a></td>
                           <td>${aluno.grupo}</td>
                           <td>${aluno.nota}</td>                                 
                       </tr>
                    </c:if>
                </c:forEach>
            </tbody>
        </table>
    </body>
   
</html>
