<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="br.com.senai.projeto.model.Evento" %>
<%@ page import="br.com.senai.projeto.dao.EventoDAO" %>
<%@ page import="java.sql.Date" %>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {

        String nome = request.getParameter("nome");
        String local = request.getParameter("local");
        Date data = Date.valueOf(request.getParameter("data"));
        String categoria = request.getParameter("categoria");

        Evento evento = new Evento(nome, local, data, categoria);

        EventoDAO dao = new EventoDAO();
        dao.cadastrar(evento);

        response.sendRedirect("listagem.jsp");
        return;
    }
%>

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