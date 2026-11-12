<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cadastro de Eventos</title>

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
    padding: 30px 15px;
    transition: 0.4s;
}

body.escuro {
    background: #101820;
    color: #f1f1f1;
}

.container {
    max-width: 650px;
    margin: auto;
    padding: 25px;
}

.topo {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 35px;
    gap: 10px;
}

h2 {
    text-align: center;
    font-size: 23px;
    flex: 1;
}

.btn-topo {
    background: #ffffff;
    color: #075e54;
    border: none;
    padding: 10px 14px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
    text-decoration: none;
    font-size: 13px;
}

.escuro .btn-topo {
    background: #263746;
    color: white;
}

form {
    width: 100%;
}

.grupo {
    margin-bottom: 22px;
}

.grupo label {
    display: block;
    margin-bottom: 8px;
    font-size: 14px;
}

.numero {
    color: #d6d36c;
    font-weight: bold;
}

input, select {
    width: 100%;
    padding: 12px;
    border: 1px solid rgba(255,255,255,0.7);
    background: transparent;
    color: white;
    outline: none;
    border-radius: 2px;
    font-size: 13px;
    transition: 0.3s;
}

input::placeholder {
    color: #c6d9d5;
}

input:focus, select:focus {
    border: 1px solid #d6d36c;
}

select option {
    background: #075e54;
    color: white;
}

.escuro input,
.escuro select {
    background: #1d2935;
    border-color: #536474;
    color: white;
}

.escuro select option {
    background: #1d2935;
}

.botao {
    width: 100%;
    padding: 14px;
    background: #d6d36c;
    color: #123c35;
    border: none;
    border-radius: 5px;
    font-weight: bold;
    font-size: 15px;
    cursor: pointer;
    transition: 0.3s;
    margin-top: 10px;
}

.botao:hover {
    background: #eeeb91;
    transform: translateY(-2px);
}

@media(max-width: 500px) {
    .topo {
        flex-direction: column;
        gap: 15px;
    }
}
</style>
</head>

<body>

<div class="container">

    <div class="topo">
        <a href="listagem.jsp" class="btn-topo">📋 Ver Eventos</a>
        <h2>Cadastro de Eventos</h2>
        <button type="button" class="btn-topo" id="btnTema" onclick="mudarTema()">🌙 Tema escuro</button>
    </div>

    <form action="cadastro.jsp" method="post">

        <div class="grupo">
            <label><span class="numero">1.</span> Nome do evento</label>
            <input type="text" name="nome" placeholder="Digite o nome do evento" required>
        </div>

        <div class="grupo">
            <label><span class="numero">2.</span> Local do evento</label>
            <input type="text" name="local" placeholder="📍 Endereço ou local do evento" required>
        </div>

        <div class="grupo">
            <label><span class="numero">3.</span> Data do evento</label>
            <input type="date" name="data" required>
        </div>

        <div class="grupo">
            <label><span class="numero">4.</span> Telefone de contato</label>
            <input type="text" name="telefone" placeholder="☎ (00) 00000-0000" required>
        </div>

        <div class="grupo">
            <label><span class="numero">5.</span> E-mail de contato</label>
            <input type="email" name="email" placeholder="✉ seuemail@email.com" required>
        </div>

        <div class="grupo">
            <label><span class="numero">6.</span> Categoria</label>
            <select name="categoria" required>
                <option value="">Selecione a categoria</option>
                <option value="Workshop">Workshop</option>
                <option value="Palestra">Palestra</option>
                <option value="Conferência">Conferência</option>
                <option value="Curso">Curso</option>
                <option value="Festival">Festival</option>
                <option value="Evento esportivo">Evento esportivo</option>
                <option value="Outro">Outro</option>
            </select>
        </div>

        <button type="submit" class="botao">Cadastrar Evento</button>

    </form>
</div>

<script>
function mudarTema() {
    document.body.classList.toggle("escuro");
    let botao = document.getElementById("btnTema");

    if (document.body.classList.contains("escuro")) {
        botao.innerHTML = "☀️ Tema claro";
    } else {
        botao.innerHTML = "🌙 Tema escuro";
    }
}
</script>

</body>
</html>
