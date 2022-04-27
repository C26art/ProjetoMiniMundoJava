<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="br.com.cursoja.agendacurso.controller.CursoController" %>

<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>
<%@ page import="java.text.DecimalFormat" %>

<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem de Cursos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<a href= "cadastrarcurso.jsp">Cadastrar Curso</a><br/>

	<div class="mb-3">
				<form method="post" action="listarprofessor.jsp">
					<p>		
						<input class="form-group" type="text" name="busca"/>
						<input class="btn btn-primary" type="submit" value="Buscar"/>	
					</p>
				</form>
  </div>
	<section>
		<div class="container">
			<table class="table table-success">
				<thead>		
					<tr class="table-dark">		
						<th>Nome</th>
						<th>Valor</th>
						<th>Ações</th>						
			  	    </tr>								
				</thead>		
		<tbody>


	<%
		String nomeBusca = request.getParameter("busca");
		
		if (nomeBusca == null) {
			nomeBusca = "";
		}
	
		CursoController controller = new CursoController();
		ArrayList<Curso> lista = controller.listar("");
		
		//DecimalFormat fmt = new DecimalFormat("###0.00");
		DecimalFormat fmt = new DecimalFormat("###,##0.00");
		for (Curso c : lista) {	
	
	%>
	
		<tr>
		
			<td><%= c.getNome() %></td>
			<td><%= fmt.format (c.getValor()) %></td>
			<td>
			<a href= "InicioAlteraCurso?id=<%= c.getId() %>">Alterar</a>
			<a href= "ExcluirCurso?id=<%= c.getId() %>"
					onclick= "return confirm('Deseja excluir esse registro?')">Excluir</a>			 
			 </td>		
		</tr>
	
	<% } %>
 
			</tbody>
		</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
 integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>