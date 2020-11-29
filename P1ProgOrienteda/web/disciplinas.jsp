<%-- 
    Document   : disciplinas
    Created on : 4 de out de 2020, 18:07:50
    Author     : Luciano
--%>

<%@include file="WEB-INF/jspf/menu.jspf" %>
<%@page import= "java.util.*" %>
<%@page import="br.fatec.disciplina.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
   
    
    Double nota0 = 0.;
    Double nota1 = 0.;
    Double nota2 = 0.;
    Double nota3 = 0.;
    Double nota4 = 0.;
    Double nota5 = 0.;
    Double nota6 = 0.;
    
    
   
    try{
        if (request.getParameter("nota0") == null) {
            nota0 = Disciplina.getList().get(0).getNota();
        }
        
        else {
            nota0 = Double.parseDouble(request.getParameter("nota0"));
        
            }
    }
    catch (Exception e){
                //
    }
    try{
        
        if (request.getParameter("nota1") == null) {
            nota1 = Disciplina.getList().get(1).getNota();
        }
        
        else {
            nota1 = Double.parseDouble(request.getParameter("nota1"));
        
            }
                
    }
    catch (Exception e){
                //
    }
    
    try{
        if (request.getParameter("nota2") == null) {
            nota2 = Disciplina.getList().get(2).getNota();
        }
        
        else {
            nota2 = Double.parseDouble(request.getParameter("nota2"));
        
            }
                
    }
    catch (Exception e){
                //
    }
    
    try{
        
        if (request.getParameter("nota3") == null) {
            nota3 = Disciplina.getList().get(3).getNota();
        }
        
        else {
            nota3 = Double.parseDouble(request.getParameter("nota3"));
        
            }
                
    }
    catch (Exception e){
                //
    }
    
    try{
        
        if (request.getParameter("nota4") == null) {
            nota4 = Disciplina.getList().get(4).getNota();
        }
        
        else {
            nota4 = Double.parseDouble(request.getParameter("nota4"));
        
            }
                
    }
    catch (Exception e){
                //
    }
    
    try{
        
        if (request.getParameter("nota5") == null) {
            nota5 = Disciplina.getList().get(5).getNota();
        }
        
        else {
            nota5 = Double.parseDouble(request.getParameter("nota5"));
        
            }
                
    }
    catch (Exception e){
                //
    }
    
    try{
        
        if (request.getParameter("nota6") == null) {
            nota6 = Disciplina.getList().get(6).getNota();
        }
        
        else {
            nota6 = Double.parseDouble(request.getParameter("nota6"));
        
            }
                
    }
    catch (Exception e){
                //
    }
    
    
    
    Disciplina.getList().get(0).setNota(nota0);
    Disciplina.getList().get(1).setNota(nota1);
    Disciplina.getList().get(2).setNota(nota2);
    Disciplina.getList().get(3).setNota(nota3);
    Disciplina.getList().get(4).setNota(nota4);
    Disciplina.getList().get(5).setNota(nota5);
    Disciplina.getList().get(6).setNota(nota6);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas</title>
    </head>
    <body>
        
       <table border="2">
            <tr>
                <th>Disciplinas</th> <th>Ciclo</th> <th>Redefinir Notas</th> <th>Notas</th>
            </tr>
            
            <tr>
                <td> <%= Disciplina.getList().get(0).getNome() %> </td> 
                <td> <%= Disciplina.getList().get(0).getCiclo() %>° </td>
                <td>
                    <form>
                       Nota: <input placeholder="0.0" type="number" name="nota0" >
                        <button  type="submit">
                            Alterar
                        </button>
                    </form>
                </td>
                <% if (Disciplina.getList().get(0).getNota() == null) {
                    Disciplina.getList().get(0).setNota(0.);
                } %>
                <td> <%= Disciplina.getList().get(0).getNota() %> </td>
               
            </tr>   
            
            <tr>
                <td> <%= Disciplina.getList().get(1).getNome() %> </td>
                <td> <%= Disciplina.getList().get(1).getCiclo() %>° </td>
                <td>
                    <form>
                       Nota: <input placeholder="0.0" type="number" name="nota1" >
                        <button  type="submit">
                            Alterar
                        </button>
                    </form>
                </td>
                <% if (Disciplina.getList().get(1).getNota() == null) {
                    Disciplina.getList().get(1).setNota(0.);
                } %>
                <td><%= Disciplina.getList().get(1).getNota() %></td>
                
            </tr>
            
            <tr>
                <td> <%= Disciplina.getList().get(2).getNome() %> </td>
                <td> <%= Disciplina.getList().get(2).getCiclo() %>° </td>
                <td>
                    <form>
                       Nota: <input placeholder="0.0" type="number" name="nota2" >
                        <button  type="submit">
                            Alterar
                        </button>
                    </form>
                </td>
                <% if (Disciplina.getList().get(2).getNota() == null) {
                    Disciplina.getList().get(2).setNota(0.);
                } %>
               <td><%= Disciplina.getList().get(2).getNota() %></td>
            </tr>
            
            <tr>
                <td> <%= Disciplina.getList().get(3).getNome() %> </td> 
                <td> <%= Disciplina.getList().get(3).getCiclo() %>° </td>
                <td>
                    <form>
                       Nota: <input placeholder="0.0" type="number" name="nota3" >
                        <button  type="submit">
                            Alterar
                        </button>
                    </form>
                </td>
                <% if (Disciplina.getList().get(3).getNota() == null) {
                    Disciplina.getList().get(3).setNota(0.);
                } %>    
                <td><%= Disciplina.getList().get(3).getNota() %></td>
                
            </tr>
            
            <tr>
                <td> <%= Disciplina.getList().get(4).getNome() %> </td> 
                <td> <%= Disciplina.getList().get(4).getCiclo() %>° </td>
                <td>
                    <form>
                       Nota: <input placeholder="0.0" type="number" name="nota4" >
                        <button  type="submit">
                            Alterar
                        </button>
                    </form>
                </td>
                <% if (Disciplina.getList().get(4).getNota() == null) {
                    Disciplina.getList().get(4).setNota(0.);
                } %>
                <td><%= Disciplina.getList().get(4).getNota() %></td>
                
            </tr>
            
            <tr>
                <td> <%= Disciplina.getList().get(5).getNome() %> </td>
                <td> <%= Disciplina.getList().get(5).getCiclo() %>° </td>
                <td>
                    <form>
                       Nota: <input placeholder="0.0" type="number" name="nota5" >
                        <button  type="submit">
                            Alterar
                        </button>
                    </form>
                </td>
                <% if (Disciplina.getList().get(5).getNota() == null) {
                    Disciplina.getList().get(5).setNota(0.);
                } %>
                <td><%= Disciplina.getList().get(5).getNota() %></td>
                
            </tr>
            
            <tr>
                <td> <%= Disciplina.getList().get(6).getNome() %> </td>
                <td> <%= Disciplina.getList().get(6).getCiclo() %>° </td>
                <td>
                    <form>
                       Nota: <input placeholder="0.0" type="number" name="nota6" >
                        <button  type="submit">
                            Alterar
                        </button>
                    </form>
                </td>
                <% if (Disciplina.getList().get(6).getNota() == null) {
                    Disciplina.getList().get(6).setNota(0.);
                } %>
                <td><%= Disciplina.getList().get(6).getNota() %></td>
                
            </tr>
            
        </table>
            
    </body>
    
    
    
</html>
