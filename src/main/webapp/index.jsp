<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sistema de Eventos</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #075e54;
    color: white;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px;
    transition: 0.4s;
}

body.escuro {
    background: #101820;
    color: #f1f1f1;
}

.container {
    max-width: 450px;
    width: 100%;
    text-align: center;
    padding: 35px 25px;
    border: 1px solid rgba(255,255,255,0.2);
    border-radius: 8px;
}

h1 {
    font-size: 26px;
    margin-bottom: 10px;
}

p {
    color: #c6d9d5;
    font-size: 14px;
    margin-bottom: 30px;
}

.menu {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

.botao {
    display: block;
    width: 100%;
    padding: 15px;
    background: #d6d36c;
    color: #123c35;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    font-size: 15px;
    transition: 0.3s;
}

.botao:hover {
    background: #eeeb91;
    transform: translateY(-2px);
}

.botao.secundario {
    background: transparent;
    color: white;
    border: 1px solid rgba(255,255,255,0.7);
}

.botao.secundario:hover {
    background: rgba(255,255,255,0.1);
}

.tema {
    margin-top: 25px;
    background: transparent;
    color: #c6d9d5;
    border: none;
    cursor: pointer;
    font-size: 13px;
    text-decoration: underline;
}
</style>
</head>

<body>

<div class="container">
    <h1>Gerenciador de Eventos</h1>
    <p>Selecione o que deseja fazer no sistema:</p>

    <div class="menu">
        <a href="cadastro.jsp" class="botao">+ Cadastrar Novo Evento</a>
        <a href="listagem.jsp" class="botao secundario">📋 Ver Eventos Cadastrados</a>
    </div>

    <button class="tema" onclick="mudarTema()">🌙 Alternar tema escuro</button>
</div>

<script>
function mudarTema() {
    document.body.classList.toggle("escuro");
}
</script>

</body>
</html>
