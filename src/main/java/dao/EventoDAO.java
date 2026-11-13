package dao;

import config.Conexao;
import model.Evento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EventoDAO {
    public void cadastrar (Evento evento) throws Exception {
        String sql = "INSERT INTO evento (nome, local, data, telefone, email, categoria) VALUES (?, ?, ?, ?, ?, ?)"+
                "Values (?, ?, ?, ?, ?, ?)";

        try (Connection conn = Conexao.conectar();
        PreparedStatement stmt = conn.prepareStatement(sql)) {
        stmt.setString( 1, evento.getNome());
        stmt.setString( 2, evento.getLocal());
        stmt.setString( 3, evento.getData());
        stmt.setString( 4, String.valueOf(evento.getId()));
        stmt.setString( 5, evento.getCategoria());


        stmt.executeUpdate();
        }
    }

    public List<Evento> listar() throws Exception {

        List<Evento> eventos = new ArrayList<>();

        String sql = "SELECT * FROM evento";
        try (Connection conn = Conexao.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                Evento evento = new Evento(
                        rs.getInt("id"),
                        rs.getString("nome"),
                        rs.getString("local"),
                        rs.getString("data"),
                        rs.getString("telefone"),
                        rs.getString("email"),
                        rs.getString("categoria")
                );
                eventos.add(evento);

            }
        }

        return eventos;


    }

    public boolean atualizar(Evento evento) {
        return false;
    }
}
