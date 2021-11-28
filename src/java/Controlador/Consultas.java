/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author Luifran
 */
public class Consultas extends Conexion{
    
    public boolean autenticacion(String usuario, String clave){
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta ="SELECT count(*) as cant from usuario where correo_usuario=? and password=?;";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, clave);
            
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
        }catch(Exception e){
            System.err.println("Error "+e);
        }finally{
            try{
                if(getConexion()!= null) getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            }catch(Exception e){
                System.err.println("Error "+e);
            }
        }
        return false;
    }
    
    
    public boolean registrar(String apellido, String nombre, String correo, String password){
        
        PreparedStatement pst= null;
        try{
            String consulta = "INSERT INTO usuario (id_usuario, apellido_usuario,nombre_usuario, correo_usuario,password) values(NULL,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, apellido);
            pst.setString(2, nombre);
            pst.setString(3, correo);
            pst.setString(4, password);
            
            if(pst.executeUpdate()==1){
                return true;
            }
        }catch(Exception e){
            System.err.println("Error "+e);
        }finally{
            try{
                if(getConexion() != null) getConexion().close();
                if(pst != null) pst.close();
            }catch(Exception e){
                System.err.println("Error "+e);
            }
        }
        
        return false;
    }
    
}
