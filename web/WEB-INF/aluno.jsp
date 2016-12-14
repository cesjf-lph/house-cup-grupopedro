<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <div><a href="lista-tudo.html">LISTAR TUDO</a></div>
        </div>
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
                <td>aluno</td>
                <td>Professor</td>
                <td>Nota</td>
            </tr>
            <c:forEach items="${ocorrencia}" var="ocorrencia">
                <c:if test="${ocorrencia.id_aluno == idAluno}">
                    <tr>
                        <td>${ocorrencia.data_ocorrencia}</td>
                        <td>${ocorrencia.id_aluno}</td>
                        <td>${ocorrencia.id_professor}</td>
                        <td>${ocorrencia.nota}</td>
                    </tr>
                </c:if>
            </c:forEach>
        </table>
    </body>
</html>
