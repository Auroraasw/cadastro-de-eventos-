
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
            background-color: #075e54;
            color: white;
            min-height: 100vh;
            padding: 30px 15px;
            transition: 0.3s;
        }

        .container {
            max-width: 650px;
            margin: auto;
            padding: 20px;
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
        }

        .tema {
            cursor: pointer;
            background: white;
            color: #075e54;
            padding: 10px 15px;
            border-radius: 8px;
            font-size: 13px;
        }

        #escuro {
            display: none;
        }

        #escuro:checked ~ .pagina {
            background: #101820;
            color: white;
        }

        .pagina {
            background: #075e54;
            color: white;
            min-height: 100vh;
            transition: 0.3s;
        }

        .grupo {
            margin-bottom: 25px;
        }

        label {
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
            margin-bottom: 9px;
            background: transparent;
            border: 1px solid #b5d4ce;
            color: white;
            outline: none;
            border-radius: 2px;
        }

        input::placeholder,
        textarea::placeholder {
            color: #c6d9d5;
        }

        select option {
            background: #075e54;
            color: white;
        }

        input:focus, select:focus, textarea:focus {
            border-color: #d6d36c;
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
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
        }

        .botao:hover {
            background: #eeeb91;
        }

        /* TEMA ESCURO */

        #escuro:checked ~ .pagina {
            background: #101820;
            color: #f1f1f1;
        }

        #escuro:checked ~ .pagina input,
        #escuro:checked ~ .pagina select,
        #escuro:checked ~ .pagina textarea {
            background: #1d2935;
            color: white;
            border-color: #536474;
        }

        #escuro:checked ~ .pagina input::placeholder,
        #escuro:checked ~ .pagina textarea::placeholder {
            color: #aeb9c3;
        }

        #escuro:checked ~ .pagina select option {
            background: #1d2935;
        }

        @media (max-width: 500px) {
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

<input type="checkbox" id="escuro">

<div class="pagina">

    <div class="container">

        <div class="topo">

            <h2>Formulário de Inscrição em Eventos</h2>

            <label for="escuro" class="tema">
                🌙 Alternar tema
            </label>

        </div>

        <form>

            <div class="grupo">
                <label><span class="numero">1.</span> Nome completo</label>

                <div class="linha">
                    <input type="text" placeholder="Primeiro nome" required>
                    <input type="text" placeholder="Último nome" required>
                </div>
            </div>

            <div class="grupo">
                <label><span class="numero">2.</span> Endereço</label>

                <input type="text" placeholder="Endereço completo" required>

                <div class="linha">
                    <input type="text" placeholder="Cidade" required>

                    <select required>
                        <option value="">Selecione o estado</option>
                        <option>Santa Catarina</option>
                        <option>São Paulo</option>
                        <option>Paraná</option>
                        <option>Rio de Janeiro</option>
                        <option>Minas Gerais</option>
                        <option>Bahia</option>
                    </select>
                </div>
            </div>

            <div class="grupo">
                <label><span class="numero">3.</span> Número de telefone</label>
                <input type="tel" placeholder="(00) 00000-0000" required>
            </div>

            <div class="grupo">
                <label><span class="numero">4.</span> Endereço de e-mail</label>
                <input type="email" placeholder="seuemail@email.com" required>
            </div>

            <div class="grupo">
                <label><span class="numero">5.</span> Empresa / Organização</label>
                <input type="text" placeholder="Nome da empresa">
            </div>

            <div class="grupo">
                <label><span class="numero">6.</span> Nome do evento</label>
                <input type="text" placeholder="Nome do evento" required>
            </div>

            <div class="grupo">
                <label><span class="numero">7.</span> Tipo de evento</label>

                <select required>
                    <option value="">Selecione o tipo</option>
                    <option>Workshop</option>
                    <option>Palestra</option>
                    <option>Conferência</option>
                    <option>Curso</option>
                    <option>Festival</option>
                    <option>Evento esportivo</option>
                </select>
            </div>

            <div class="grupo">
                <label><span class="numero">8.</span> Data do evento</label>
                <input type="date" required>
            </div>

            <div class="grupo">
                <label><span class="numero">9.</span> Quantidade de participantes</label>
                <input type="number" min="1" placeholder="Quantidade" required>
            </div>

            <div class="grupo">
                <label><span class="numero">10.</span> Informações adicionais</label>
                <textarea placeholder="Digite suas observações..."></textarea>
            </div>

            <button type="submit" class="botao">
                Enviar inscrição
            </button>

        </form>

    </div>

</div>

</body>
</html>
