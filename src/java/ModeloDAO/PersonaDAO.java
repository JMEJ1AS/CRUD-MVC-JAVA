
package ModeloDAO;

import Config.Conexion;
import Interfaces.USER;
import Modelo.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO implements USER{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    User u = new User();
    
    @Override
    public int login(User usr) {
        
        int nivel = 0;

        String sql="SELECT nivel FROM users WHERE user='"+usr.getUser()+"'and password='"+usr.getPass()+"'";
        
        try {
            con=cn.getConection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                    nivel = rs.getInt(1);                        
                }
            
        } catch (SQLException e) {
            
        }
        
        return nivel;
    }
    

    @Override
    public List listar() {
        ArrayList<User>list=new ArrayList<>();
        String sql="SELECT users.*, comunas.* "
                + "FROM users "
                + "INNER JOIN comunas ON users.comuna_id = comunas.id ";
        
        
        try {
            con=cn.getConection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                User per=new User();
                per.setId(rs.getInt("users.Id"));
                per.setDni(rs.getString("users.DNI"));
                per.setNom(rs.getString("users.Nombres"));
                per.setComuna_id(rs.getInt("users.comuna_id"));
                per.setNombreComuna(rs.getString("comunas.nombre"));
                list.add(per);
                
            }
            
        } catch (SQLException e) {
        }
        return list;
    }

    @Override
    public User list(int id) {
        
        ArrayList<User>list=new ArrayList<>();
        
        String sql="SELECT * FROM users WHERE Id="+id;
        
        try {
            con=cn.getConection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                u.setId(rs.getInt("Id"));
                u.setDni(rs.getString("DNI"));
                u.setNom(rs.getString("Nombres"));
                u.setComuna_id(rs.getInt("comuna_id"));
                
            }
            
        } catch (SQLException e) {
        }
        return u;
        
    }

    @Override
    public boolean add(User usr) {
        String sql="insert into users(DNI, Nombres, comuna_id)values('"+usr.getDni()+"','"+usr.getNom()+"','"+usr.getComuna_id()+"')";
        try {
            con=cn.getConection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (SQLException e) {
            
        }
        return false;
    }

    @Override
    public boolean edit(User usr) {
        
        String sql="UPDATE users SET DNI='"+usr.getDni()+"',Nombres='"+usr.getNom()+"',comuna_id='"+usr.getComuna_id()+"' WHERE Id="+usr.getId();
        try{
            con=cn.getConection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        
        } catch (SQLException e){
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from users where Id="+id;
        try {
            con=cn.getConection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e){
        }
        return false;
    }   
}