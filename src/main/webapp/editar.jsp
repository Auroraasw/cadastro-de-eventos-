
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.Evento" %>
<%@ page import="dao.EventoDAO" %>

<%
        request.setCharacterEncoding("UTF-8");

        EventoDAO dao = new EventoDAO();

        if ("POST".equalsIgnoreCase(request.getMethod())) {

            Evento evento = new Evento();

            evento.setId(Integer.parseInt(request.getParameter("id")));
            evento.setNome(request.getParameter("nome"));
            evento.setLocal(request.getParameter("local"));
            evento.setData(request.getParameter("data"));
            evento.setTelefone(request.getParameter("telefone"));
            evento.setEmail(request.getParameter("email"));
            evento.setCategoria(request.getParameter("categoria"));

            boolean atualizado = dao.atualizar(evento);

            if (atualizado) {
                response.sendRedirect("listagem.jsp");
                return;
            }
        }

