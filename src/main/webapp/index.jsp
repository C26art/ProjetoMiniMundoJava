<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.cursoja.agendacurso.model.dao.Conexao" %>
<%@ page import="br.com.cursoja.agendacurso.model.dao.CursoDao" %>
<%@ page import="br.com.cursoja.agendacurso.model.dao.ProfessorDao" %>

<%@ page import="br.com.cursoja.agendacurso.model.entidade.Curso" %>
<%@ page import="br.com.cursoja.agendacurso.model.entidade.Professor" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página inicial</title> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <style>
 .navbar{
 		background-image: url(./img/Background.png);
 		padding-bottom:19px;
 } 
 
 </style>
  
</head>

<body style="background-color:#F8E0BF;">
	<nav class="navbar navbar-expand-lg navbar-light" style="backgound-color:#FAAA7C">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"> <img id="logo" src="img/aguia-removebg-preview.png" width="90" height="60"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:#0B5ED7;font-size:20px;"
           href="listarcurso.jsp" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Cursos</a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" style="color:#0B5ED7;" href="listarcurso.jsp">Alterar</a></li>           
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" style="color:#0B5ED7;" href="listarcurso.jsp">Excluir</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" style="color:#0B5ED7;font-size:20px;"
           href="listarprofessor.jsp" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Professores</a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" style="color:#0B5ED7;" href="listarprofessor.jsp">Alterar</a></li>            
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" style="color:#0B5ED7;" href="listarprofessor.jsp">Excluir</a></li>
          </ul>
        </li>  
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" style="color:#0B5ED7;font-size:20px;" 
          href="login.jsp">Administrativo</a>         
        </li>      
      </ul>
      <form action="ExecutaAlteraProfessor" method="post" class="d-flex">
        <input name="pesquisa" class="form-control me-2" type="search" placeholder="Digite o Nome" aria-label="Search">
        <button class="btn btn-outline-success" style="color:#0B5ED7; type="submit">Buscar</button>
      </form>
    </div>
  </div>
</nav>
	<div class="container">
		<div class="row">
			<div class="cold-md-7">				
					<h3 style="color: #0B5ED7; text-align:center; font-weight:700; padding-top:20px">Cadastrar Professor</h3>	
				<hr>
					<form action="ProfessorServelet" method="POST">
				<div class="form-floating mb-3">
						<input name="valorhora" maxlength="11" type="number" class="form-control" id="floatingInput1" required> 
						<label>Valor Hora</label>
					</div>
					<div class="form-floating mb-3">
						<input name="nomeprofessor" maxlength="40" type="text" class="form-control" required> 
						<label>Nome:</label>
					</div>
					<div class="form-floating mb-3">
						<input name="celularprofessor" type="text" class="form-control" required>
						<label>Celular:</label>
					</div>
					<select name="situacao" class="form-select mb-3" aria-label="Default select example">
						<option value="Inativo" selected>-- Selecione a situação</option>
						<option value="Ativo">Ativo</option>
						<option value="Inativo">Inativo</option>
					</select>

					<button class="btn btn-primary" type="submit">Cadastrar
						Professor</button>
					<button class="btn btn-primary" type="reset">Limpar
						Cadastro</button>
			</form>			
		</div>		
	</div>
</div>


	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>