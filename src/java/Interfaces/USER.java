
package Interfaces;

import Modelo.User;
import java.util.List;

public interface USER {
    
    public List listar();
    public User list(int id);
    public int login(User usr);
    public boolean add(User usr);
    public boolean edit(User usr);
    public boolean eliminar(int id);
}