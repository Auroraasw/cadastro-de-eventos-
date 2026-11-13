
package model;

public class Evento {

    private int id;
    private String nome;
    private String local;
    private String data;
    private String telefone;
    private String email;
    private String categoria;

    public Evento(int id, String nome, String local, String data, String telefone, String email, String categoria) {
        this.id = id;
        this.nome = nome;
        this.local = local;
        this.data = data;
        this.telefone = telefone;
        this.email = email;
        this.categoria = categoria;
    }

    public Evento() {

    }

    // ID
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    // Nome
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    // Local
    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    // Data
    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    // Telefone
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    // Email
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Categoria
    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
}
