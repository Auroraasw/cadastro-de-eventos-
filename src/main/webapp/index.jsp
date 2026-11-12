<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Eventos</title>
</head>
<body>

<h1>Cadastrar Evento</h1>

<form action="cadastro.jsp" method="post">

    <label>Nome:</label>
    <input type="text" name="nome" required>

    <br><br>

    <label>Local:</label>
    <input type="text" name="local" required>

    <br><br>

    <label>Data:</label>
    <input type="date" name="data" required>

    <br><br>

    <label>Categoria:</label>
    <input type="text" name="categoria" required>

    <br><br>

    <button type="submit">Cadastrar</button>

</form>

</body>
</html>
