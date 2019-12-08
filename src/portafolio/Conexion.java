/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package portafolio;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author The_S
 */
public class Conexion {

    public Connection Conecta() {
        Connection conn = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            System.out.println("Oops! Can't find class oracle.jdbc.driver.OracleDriver");
            System.exit(1);
        }
        try {
            conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "portafolio", "portafolio");
            System.out.println("Conectado con éxito");
        } catch (Exception e) {
            System.out.println("ERROR " + e.getMessage());
        }
        return conn;

    }

}
