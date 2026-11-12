

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
        }

        .container {
            max-width: 650px;
            margin: auto;
            padding: 20px;
        }

        .topo {
            text-align: center;
            margin-bottom: 35px;
        }

        h2 {
            font-size: 24px;
        }

        .subtitulo {
            font-size: 13px;
            margin-top: 10px;
            color: #c6d9d5;
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

        input, select {
            width: 100%;
            padding: 12px;
            margin-bottom: 9px;
            background: transparent;
            border: 1px solid #b5d4ce;
            color: white;
            outline: none;
            border-radius: 2px;
        }

        input::placeholder {
            color: #c6d9d5;
        }

        select option {
            background: #075e54;
            color: white;
        }

        input:focus, select:focus {
            border-color: #d6d36c;
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

        /* Tema escuro */

        #tema {
            display: none;
        }

        .alternar {
            display: inline-block;
            margin-bottom: 20px;
            padding: 10px 15px;
            background: white;
            color: #075e54;
            border-radius: 6px;
            cursor: pointer;
            font-size: 13px;
        }

        #tema:checked ~ .container {
            background: #101820;
            color: white;
        }

        #tema:checked ~ .container input,
        #tema:checked ~ .container select {
            background: #1d2935;
            color: white;
            border-color: #536474;
        }

        #tema:checked ~ .container input::placeholder {
            color: #aeb9c3;
        }

        #tema:checked ~ .container select option {
            background: #1d2935;
        }

        @media(max-width: 500px) {
            .container {
                padding: 10px;
            }

            h2 {
                font-size: 20px;
            }
        }

    </style>
</head>

<body>

    <input type="checkbox" id="tema">

    <div class="container">

        <div class="topo">
            <h2>Formulário de Cadastro de Eventos</h2>

            <p class="subtitulo">
                Preencha as informações para cadastrar seu evento.
            </p>
        </div>

        <label for="tema" class="alternar">
            🌙 Alternar tema
        </label>

        <form action="cadastro.jsp" method="POST">

            <div class="grupo">
                <label>
                    <span class="numero">1.</span>
                    Nome do evento
                </label>

                <input type="text"
                       name="nome"
                       placeholder="Digite o nome do evento"
                       required>
            </div>

            <div class="grupo">
                <label>
                    <span class="numero">2.</span>
                    Local do evento
                </label>

                <input type="text"
                       name="local"
                       placeholder="Digite o endereço ou local"
                       required>
            </div>

            <div class="grupo">
                <label>
                    <span class="numero">3.</span>
                    Data do evento
                </label>

                <input type="date"
                       name="data"
                       required>
            </div>

            <div class="grupo">
                <label>
                    <span class="numero">4.</span>
                    Número de telefone
                </label>

                <input type="tel"
                       name="telefone"
                       placeholder="(00) 00000-0000"
                       required>
            </div>

            <div class="grupo">
                <label>
                    <span class="numero">5.</span>
                    Endereço de e-mail
                </label>

                <input type="email"
                       name="email"
                       placeholder="email@email.com"
                       required>
            </div>

            <div class="grupo">
                <label>
                    <span class="numero">6.</span>
                    Categoria do evento
                </label>

                <select name="categoria" required>

                    <option value="">Selecione uma categoria</option>

                    <option value="Workshop">Workshop</option>

                    <option value="Palestra">Palestra</option>

                    <option value="Conferencia">Conferência</option>

                    <option value="Curso">Curso</option>

                    <option value="Festival">Festival</option>

                    <option value="Esportivo">Esportivo</option>

                    <option value="Outro">Outro</option>

                </select>
            </div>

            <button type="submit" class="botao">
                Cadastrar evento
            </button>

        </form>

    </div>

</body>
</html>
