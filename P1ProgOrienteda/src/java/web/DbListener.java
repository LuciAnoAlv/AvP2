/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;
import java.sql.*;
import br.fatec.disciplina.poo.Disciplina;

/**
 *
 * @author Luciano
 */
public class DbListener {
    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String URL = "jdbc:sqlite:C:\\Users\\Luciano\\Desktop\\BancoSQLPOO\\disciplina.db";
    
    public static void createTable() throws Exception {
        Class.forName(CLASS_NAME);
        Connection con = DriverManager.getConnection(URL);
        Statement stmt = con.createStatement();
        stmt.execute("CREATE TABLE IF NOT EXISTS disciplina (nome  VARCHAR(100) UNIQUE NOT NULL)");
        
        stmt.close();
        con.close();
    }
    
    public static void discip() throws Exception {
        Class.forName(CLASS_NAME);
        Connection con = DriverManager.getConnection(URL);
        Statement stmt = con.createStatement();
        if (Disciplina.getList().isEmpty()) {
            stmt.executeUpdate("INSERT INTO disciplina (nome)"
                        + "VALUES ('Engenharia de Software III')");
            stmt.executeUpdate("INSERT INTO disciplina (nome)"
                        + "VALUES ('Programação Orientada a Objetos')");
            stmt.executeUpdate("INSERT INTO disciplina (nome)"
                        + "VALUES ('Linguagem de Programação IV - INTERNET')");
            stmt.executeUpdate("INSERT INTO disciplina (nome)"
                        + "VALUES ('Programação para Dispositivos Móveis')");
            stmt.executeUpdate("INSERT INTO disciplina (nome)"
                        + "VALUES ('Segurança da Informação')");
            stmt.executeUpdate("INSERT INTO disciplina (nome)"
                        + "VALUES ('Sistemas Operacionais II')");
            stmt.executeUpdate("INSERT INTO disciplina (nome)"
                        + "VALUES ('Metodologia da Pesquisa Científico-Tecnológica')");
        }
        
        stmt.close();
        con.close();
    }
    
   
    
}
