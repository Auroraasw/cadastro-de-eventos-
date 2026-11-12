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

