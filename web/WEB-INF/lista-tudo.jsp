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
    </head>
    <body>
        <h1>Hello World!</h1>
    <c:forEach var="soma" items="${somanotas}">
    <li>${soma[0]}: ${soma[1]}</li>
    </c:forEach>
    </body>
</html>
