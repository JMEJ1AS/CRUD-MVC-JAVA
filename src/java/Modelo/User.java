
package Modelo;

public class User {
    
    int id;
    String dni;
    String nom;
    String user;
    String pass;
    int nivel;
    int comuna_id;
    String nombreComuna;

    public User() {
    
    }

    public User(String dni, String nom, String user, String pass, int nivel, int comuna_id, String nombreComuna){

        this.dni = dni;
        this.nom = nom;
        this.user = user;
        this.pass = pass;
        this.nivel = nivel;
        this.comuna_id = comuna_id;
        this.nombreComuna = nombreComuna;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }
    
    public int getComuna_id() {
        return comuna_id;
    }

    public void setComuna_id(int comuna_id) {
        this.comuna_id = comuna_id;
    }

    public String getNombreComuna() {
        return nombreComuna;
    }

    public void setNombreComuna(String nombreComuna) {
        this.nombreComuna = nombreComuna;
    }
    
}