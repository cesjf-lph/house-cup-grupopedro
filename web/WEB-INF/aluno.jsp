<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <form method="post">
         <input type="hidden" name="id_aluno" value="${idAluno}" />
        <div>
            <label>id professor:
                <input type="text" name="id_professor" />
            </label>
        </div>
        <div>
            <label>nota:
                <input type="text" name="nota" />
            </label>
        </div>
        <div>
            <input type="submit" />
        </div>
    </form>
        <br><br>
        
    <table>
        <tr>
            <td>Data</td>
            <td>Professor</td>
            <td>Aluno</td>
            <td>id aluno</td>
        </tr>
        <c:forEach items="${ocorrencia}" var="ocorrencia">
                <tr>
                    <td>${ocorrencia.data_ocorrencia}</td>
                    <td>${ocorrencia.id_aluno}</td>
                    <td>${ocorrencia.nota}</td>
                    <td>${idAluno}</td>
                </tr>
        </c:forEach>
    </table>
        
</html>
