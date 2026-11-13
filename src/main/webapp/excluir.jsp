package dao;

import model.Evento;
import java.util.ArrayList;
import java.util.List;

public class EventoDAO {

    private static List<Evento> eventos = new ArrayList<>();

    public void excluir(int id) {
        for (int i = 0; i < eventos.size(); i++)
            if (eventos.get(i).getId() == id) {
                eventos.remove(i);
                break;

            }
        }
    }