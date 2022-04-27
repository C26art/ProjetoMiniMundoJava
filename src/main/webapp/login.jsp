<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    <div class="box">
      <h2>Login</h2>
      <form method="post" action="LoginServlet">
          <div class="inputBox">
              <input type="text" name="login" required>
              <label >Usuário</label>
          </div>
          <div class="inputBox">
            <input type="password" name="senha" required>
            <label>Senha</label>
        </div>
        <input type="submit" value="Entrar">
      </form>
    </div>

</body>

</html>




