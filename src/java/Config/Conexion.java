
package Config;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jmejias
 */

public class Conexion {
    
    Connection con;
    
        public Conexion(){
       
            try {
                /*String connectionUrl = "jdbc:sqlserver://192.168.8.102:1433;"
                + "DatabaseName=registro;"
                + "user=sa;password=Pa$$w0rd;";*/
                
                Class.forName("com.mysql.jdbc.Driver");
                //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registro","root","linux");
                //con=DriverManager.getConnection("jdbc:microsoft:sqlserver://192.168.8.102:1433;DatabaseName=registro","sa","Pa$$w0rd");
                //con = DriverManager.getConnection(connectionUrl);
                System.out.println("Se conectó");
                
                
            } catch (SQLException e) {
            
                System.err.println("Error"+e);
            

            } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        }
            
    public Connection getConection(){
        
        return con;
    }

}
