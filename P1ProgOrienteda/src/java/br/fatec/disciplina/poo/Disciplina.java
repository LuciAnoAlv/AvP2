/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package br.fatec.disciplina.poo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;
import web.DbListener;
/**
 *
 * @author Luciano
 */
public class Disciplina {

    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String URL = "jdbc:sqlite:C:\\Users\\Luciano\\Desktop\\BancoSQLPOO\\disciplina.db";
    
    private String nome;
    private String ementa;
    private int ciclo;
    private Double nota;

    public Disciplina(String nome) {
        this.nome = nome;
        
    }

    public Disciplina(String nome, String ementa, int ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public Double getNota() {
        return nota;
    }

    public void setNota(Double nota) {
        this.nota = nota;
    }
    
    public static ArrayList<String> select() throws Exception{
        ArrayList<String> list = new ArrayList<>();
        Class.forName(CLASS_NAME);
        Connection con = DriverManager.getConnection(URL);
        Statement stmt = con.createStatement();
        DbListener.createTable();
        ResultSet rs = stmt.executeQuery("SELECT * FROM disciplina");
        while(rs.next()){
            list.add(rs.getString("nome"));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    public static void insert(String name) throws Exception{
        Class.forName(CLASS_NAME);
        Connection con = DriverManager.getConnection(URL);
        Statement stmt = con.createStatement();
        stmt.execute("insert into disciplina values('"+name+"')");
        stmt.close();
        con.close();
    }
    public static void delete(String name) throws Exception{
        Class.forName(CLASS_NAME);
        Connection con = DriverManager.getConnection(URL);
        Statement stmt = con.createStatement();
        stmt.execute("delete from disciplina where nome = '"+name+"'");
        stmt.close();
        con.close();
    }
    
    public static ArrayList<Disciplina> getList() throws Exception{
        ArrayList<Disciplina> list = new ArrayList<>();
        Statement stmt = null; ResultSet rs = null;
        Exception methodException = null;
        
        try {
            Class.forName(CLASS_NAME);
            Connection con = DriverManager.getConnection(URL);
            stmt = con.createStatement();
            
            rs = stmt.executeQuery("SELECT * FROM disciplina");
        
            while(rs.next()) {
            list.add(new Disciplina(rs.getString("nome")));
            
            }
        }catch(Exception ex) {
               
               methodException = ex;
        }finally{
            try{rs.close();}catch(Exception ex2) {}
            try{stmt.close();}catch(Exception ex2) {}
        }
        
        
        if (methodException !=null) throw methodException;
        
        return list;
    }
    
    
}