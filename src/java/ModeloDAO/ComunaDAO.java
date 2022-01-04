
package ModeloDAO;

import Config.Conexion;
import Interfaces.COMUNA;
import Modelo.Comuna;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ComunaDAO implements COMUNA {
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Comuna c=new Comuna();

    @Override
    public List listar() {
        
        ArrayList<Comuna>list=new ArrayList<>();
        
        String sql="SELECT comunas.id, comunas.nombre, regiones.id, regiones.nombre "
                    + "FROM comunas "
                    + "INNER JOIN regiones ON comunas.region_id = regiones.id";
        try {
            con=cn.getConection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                Comuna cmn=new Comuna();
                cmn.setId(rs.getInt("comunas.id"));
                cmn.setNombre(rs.getString("comunas.nombre"));
                cmn.setRegion_id(rs.getInt("regiones.id"));
                cmn.setNombreRegion(rs.getString("regiones.nombre"));
                list.add(cmn);
                
            }
            
        } catch (SQLException e) {
        }
        return list;    
    }

    @Override
    public Comuna list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
