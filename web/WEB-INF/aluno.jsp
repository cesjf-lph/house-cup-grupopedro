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
</html>
