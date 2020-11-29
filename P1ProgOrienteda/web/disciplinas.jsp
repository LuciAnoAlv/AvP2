<%-- 
    Document   : disciplinas
    Created on : 4 de out de 2020, 18:07:50
    Author     : Luciano
--%>

<%@page import="web.DbListener"%>
<%@include file="WEB-INF/jspf/menu.jspf" %>
<%@page import= "java.util.*" %>
<%@page import="br.fatec.disciplina.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
   String errorMessage = null;
    if(request.getParameter("insert")!=null){
        try{
            String name = request.getParameter("nome");
            Disciplina.insert(name);
            response.sendRedirect(request.getRequestURI());
        }catch(Exception ex){
            errorMessage = "Erro ao inserir tarefa: "
                    +ex.getMessage();
        }
    }
    if(request.getParameter("delete")!=null){
        try{
            String name = request.getParameter("nome");
            Disciplina.delete(name);
            response.sendRedirect(request.getRequestURI());
        }catch(Exception ex){
            errorMessage = "Erro ao excluir tarefa: "
                    +ex.getMessage();
        }
    }
    ArrayList<String> tasks = new ArrayList<>();
    try{
        if (Disciplina.select().isEmpty()){
            DbListener.createTable();
        }
        tasks = Disciplina.select();
    }catch(Exception ex){
        errorMessage = "Erro ao ler tarefas: "
                +ex.getMessage();
    }
    
    
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação P2</title>
    </head>
    <body>
        <h1>ADS</h1>
        <h2>Disciplinas</h2>
        <form>
            <input type="text" name="nome"/>
            <input type="submit" name="insert" value="Inserir tarefa"/>
        </form>
        <hr/>
        <%if(errorMessage!=null){%>
            <div style="color: red"><%= errorMessage %></div>
            <hr/>
        <%}%>
        <table border="1">
            <tr>
                <th>Disciplina</th>
                <th>Editar</th>
            </tr>
            <%for(String name: tasks){%>
            <tr>
                <td><%= name %></td>
                <td>
                    <form>
                        <input type="hidden" name="nome" value="<%= name %>"/>
                        <input type="submit" name="delete" value="Excluir"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
