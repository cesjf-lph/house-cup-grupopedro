<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Aluno</title>
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
            #novo-aluno{
                margin: 30px auto;
                width: 400px;
                border: 1px solid #CCC;
            }
            #novo-aluno div {
                padding: 5px;
            }
            #novo-aluno .novo-aluno-topo{
                text-align: center;
                background-color: #EEE;
                border-bottom: 1px solid #CCC;
            }
            #novo-aluno div:last-child{
                text-align: right;
            }
        </style>               
    </head>
    <body>
        
        <div id="menu">
            <div class="ativo"><a href="#">NOVO ALUNO</a></div>
            <div><a href="listar-alunos.html">LISTAR GRUPOS</a></div>
            <div><a href="lista-tudo.html">LISTAR TUDO</a></div>
        </div>
        <div id="novo-aluno">
            <div class='novo-aluno-topo'>Novo Aluno</div>
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
                    <input type="submit" />
                </div>
            </form>
        </div>
    </body>
</html>
