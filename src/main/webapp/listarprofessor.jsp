<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="br.com.cursoja.agendacurso.controller.ProfessorController" %>

<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.text.DecimalFormat" %>

<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem de Professor</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<a href= "index.jsp"></a>
	<section>
		<div class="container">
			<table class="table table-success">
				<thead>
					<tr class="table-dark">			
						<th>Valor Hora</th>
						<th>Nome</th>
						<th>Celular</th>				
						<th>Ações</th>
					</tr>								
				</thead>		
		<tbody>
		
	<%
		ProfessorController controller = new ProfessorController();
		ArrayList<Professor> lista = controller.listar("");
		
		//DecimalFormat fmt = new DecimalFormat("###0.00");
		DecimalFormat fmt = new DecimalFormat("###,##0.00");
		for (Professor p : lista) {	
	
	%>
	
	<tr>
					
			<td><%= fmt.format (p.getValorHora()) %></td>
			<td><%= p.getNome() %></td>
			<td><%= p.getCelular() %></td>
			<td>
			<a href= "InicioAlteraProfessor?id=<%= p.getId()%>" >Alterar</a>
			<a href= "ExcluirProfessor?id=<%= p.getId() %>"
			   onclick= "if (!confirm('Deseja excluir esse registro?')){return false}">Excluir</a>			
			</td>		
				</tr>
	
	<% } %>	
	 
			</tbody>
		</table>
		<form action="index.jsp">
	<button class="btn btn-primary" type="submit" style="text-align:center;">Voltar</button>
	</form>
	</div>	
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>