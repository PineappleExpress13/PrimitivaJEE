/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Primitiva.modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Pineapple
 */
public class Consultas extends Conexion{
    
    public boolean Validar(String usuario,String pass) throws SQLException
    {
        Statement st = con.createStatement();
        /*Variable que almacenará los datos*/
        ResultSet rs = null;
        String Consulta = "Select * From usuario";
        rs = st.executeQuery(Consulta);
        
        while(rs.next())
        {
            if(usuario.equals(rs.getString("nombre")) && pass.equals(rs.getString("password")))
                return true;
        }
        
        return false;
    }
    
}
