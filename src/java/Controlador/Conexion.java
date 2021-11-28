/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



/**
 *
 * @author Luifran
 */
public class Conexion {
    private String USERNAME="root";
    private String PASSWORD="";
    private String HOST="localhost";
    private String PORT="3306";
    private String DATABASE="curso_java";
    private String CLASSNAME="com.mysql.jdbc.Driver";
    private String URL="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }catch(ClassNotFoundException e){
            System.err.println("ERROR "+e);
        }catch(SQLException e){
            System.err.println("ERROR "+e);
        }
    }
    
    public Connection getConexion(){
        return con;
    }
}
