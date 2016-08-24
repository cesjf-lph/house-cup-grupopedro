<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Aluno</title>
    </head>
    <body>
        <h1>Novo Aluno</h1>
        <form method="post">
            <div>
                <label>Nome:
                <input type="text" name="nome" />
                </label>
            </div>
            <div>
                <label>Grupo:
                     <input type="text" name="grupo" />
                </label>
            </div>
            <div>
                <label>Nota:
                     <input type="text" name="nota" />
                </label>
            </div>
            <div>
                <input type="submit" />
            </div>
        </form>
    </body>
</html>
