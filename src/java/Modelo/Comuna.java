
package Modelo;

public class Comuna {
    
    int id;
    String nombre;
    int region_id;
    String nombreRegion;

    public Comuna() {
    
    }

    public Comuna(String nombre, int region_id, String nombreRegion) {
        
        this.nombre = nombre;
        this.region_id = region_id;
        this.nombreRegion = nombreRegion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getRegion_id() {
        return region_id;
    }

    public void setRegion_id(int region_id) {
        this.region_id = region_id;
    }

    public String getNombreRegion() {
        return nombreRegion;
    }
        
    public void setNombreRegion(String nombreRegion) {
        this.nombreRegion = nombreRegion;
    }        
}