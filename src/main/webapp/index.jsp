
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Inscrição em Eventos</title>

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
}

h2 {
    text-align: center;
    font-size: 23px;
    flex: 1;
}

.tema {
    background: #ffffff;
    color: #075e54;
    border: none;
    padding: 10px 14px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
}

.escuro .tema {
    background: #263746;
    color: white;
}

form {
    width: 100%;
}

.grupo {
    margin-bottom: 25px;
}

.grupo label {
    display: block;
    margin-bottom: 9px;
    font-size: 14px;
}

.numero {
    color: #d6d36c;
    font-weight: bold;
}

.linha {
    display: flex;
    gap: 10px;
}

input, select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid rgba(255,255,255,0.7);
    background: transparent;
    color: white;
    outline: none;
    border-radius: 2px;
    font-size: 13px;
    margin-bottom: 9px;
    transition: 0.3s;
}

input::placeholder,
textarea::placeholder {
    color: #c6d9d5;
}

input:focus, select:focus, textarea:focus {
    border: 1px solid #d6d36c;
}

select option {
    background: #075e54;
    color: white;
}

.escuro input,
.escuro select,
.escuro textarea {
    background: #1d2935;
    border-color: #536474;
    color: white;
}

.escuro input::placeholder,
.escuro textarea::placeholder {
    color: #aeb9c3;
}

.escuro select option {
    background: #1d2935;
}

textarea {
    height: 100px;
    resize: vertical;
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
}

.botao:hover {
    background: #eeeb91;
    transform: translateY(-2px);
}

.mensagem {
    display: none;
    margin-top: 18px;
    padding: 14px;
    text-align: center;
    background: #d4edda;
    color: #155724;
    border-radius: 5px;
}

@media(max-width: 500px) {
    .linha {
        flex-direction: column;
        gap: 0;
    }

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
        <h2>Formulário de Inscrição em Eventos</h2>
        <button class="tema" onclick="mudarTema()">
            🌙 Tema escuro
        </button>
    </div>

    <form id="formulario">

        <div class="grupo">
            <label><span class="numero">1.</span> Nome completo</label>
            <div class="linha">
                <input type="text" placeholder="Primeiro nome" required>
                <input type="text" placeholder="Último nome" required>
            </div>
        </div>

        <div class="grupo">
            <label><span class="numero">2.</span> Qual é o seu endereço?</label>
            <input type="text" placeholder="📍 Endereço completo" required>

            <div class="linha">
                <input type="text" placeholder="Cidade" required>

                <select required>
                    <option value="">Selecione o estado</option>
                    <option>Santa Catarina</option>
                    <option>São Paulo</option>
                    <option>Paraná</option>
                    <option>Rio de Janeiro</option>
                    <option>Rio Grande do Sul</option>
                    <option>Minas Gerais</option>
                    <option>Bahia</option>
                    <option>Outro</option>
                </select>
            </div>
        </div>

        <div class="grupo">
            <label><span class="numero">3.</span> Número de telefone</label>
            <input type="tel" placeholder="☎ (00) 00000-0000" required>
        </div>

        <div class="grupo">
            <label><span class="numero">4.</span> Endereço de e-mail</label>
            <input type="email" placeholder="✉ seuemail@email.com" required>
        </div>

        <div class="grupo">
            <label><span class="numero">5.</span> Empresa / Organização</label>
            <input type="text" placeholder="Nome da empresa ou organização">
        </div>

        <div class="grupo">
            <label><span class="numero">6.</span> Nome do evento</label>
            <input type="text" placeholder="Digite o nome do evento" required>
        </div>

        <div class="grupo">
            <label><span class="numero">7.</span> Tipo de evento</label>
            <select required>
                <option value="">Selecione o tipo de evento</option>
                <option>Workshop</option>
                <option>Palestra</option>
                <option>Conferência</option>
                <option>Curso</option>
                <option>Festival</option>
                <option>Evento esportivo</option>
                <option>Outro</option>
            </select>
        </div>

        <div class="grupo">
            <label><span class="numero">8.</span> Data do evento</label>
            <input type="date" required>
        </div>

        <div class="grupo">
            <label><span class="numero">9.</span> Quantidade de participantes</label>
            <input type="number" min="1" placeholder="Número de participantes" required>
        </div>

        <div class="grupo">
            <label><span class="numero">10.</span> Informações adicionais</label>
            <textarea placeholder="Digite alguma observação..."></textarea>
        </div>

        <button type="submit" class="botao">
            Enviar inscrição
        </button>

        <div class="mensagem" id="mensagem">
            ✓ Inscrição enviada com sucesso!
        </div>

    </form>
</div>

<script>

function mudarTema() {
    document.body.classList.toggle("escuro");

    let botao = document.querySelector(".tema");

    if (document.body.classList.contains("escuro")) {
        botao.innerHTML = "☀️ Tema claro";
    } else {
        botao.innerHTML = "🌙 Tema escuro";
    }
}

document.getElementById("formulario").addEventListener("submit", function(event) {
    event.preventDefault();

    document.getElementById("mensagem").style.display = "block";

    this.reset();
});

</script>

</body>
</html>
