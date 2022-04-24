<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background-color:#F8E0BF;">

	<%
		Professor professorAlterar = (Professor) request.getAttribute("professor");
		DecimalFormat fmt = new DecimalFormat("###0.00");
	
	%>
	<div class="container col-6">
		<fieldset>
			<legend style="text-align:center">Formulário Alterar Professor</legend>
			<form class="form" method="post" action="ExecutaAlteraProfessor">
				<div class="mb-3">
					<label for="alterarvalor" class="form-label">Valor Hora</label>
						<input type="number" class="form-control" id="alterarvalor" name="valorhora" value="<%= professorAlterar.getValorHora() %>"
						step="0.01"/>
				</div>
				<div class="mb-3">
					<label for="alterarnome" class="form-label">Nome</label>
						<input type="text" class="form-control" id="alterarnome" name="nomeprofessor" value="<%= professorAlterar.getNome() %>"/>
				</div>
				<div class="mb-3">
					<label for="alterarcelular" class="form-label">Celular:</label>
						<input type="text" class="form-control" id="alterarcelular" name="celularprofessor" value="<%= professorAlterar.getCelular() %>"/>
						<input type="hidden" name="id" value="<%=professorAlterar.getId() %>"/>
						<input type="submit" class="btn btn-primary" style= "margin-top:10px;" value="Alterar"/>	
						<button class="btn btn-primary" method="post" action="index.jsp" type="submit" style="margin-top:10px;">Voltar</button>
				</div>		
		</fieldset>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>