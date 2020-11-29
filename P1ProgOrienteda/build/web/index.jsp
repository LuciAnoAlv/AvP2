<%-- 
    Document   : index
    Created on : 4 de out de 2020, 17:51:06
    Author     : Luciano
--%>
<%@include file="WEB-INF/jspf/menu.jspf" %>
<%@page import="br.fatec.disciplina.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%Disciplina.getList().clear(); %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação P1</title>
    </head>
    <body>
        <h1>Programação Orientada a Objeto</h1>
        <h2>Nome: Luciano Alves Da Silva</h2>
        <h2>RA: 1290481823025</h2>
        <h2>Quantidade de Disciplinas: <%= Disciplina.getList().size() %> </h2>
    </body>
</html>
