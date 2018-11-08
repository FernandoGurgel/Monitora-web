<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menuLogin.jsp"></jsp:include>
<br />

<div id="login">
	<h3 class="text-center text-white pt-5">Login form</h3>
	<div class="container">
		<div id="login-row"
			class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-6">
				<div id="login-box" class="col-md-12">
					<form id="login-form" class="form" action="/aluno/validar" method="post">
						<h3 class="text-center text-info">Login</h3>
						<div class="form-group">
							<label for="username" class="text-info">Username:</label><br>
							<input type="text" name="email" id="username"
								class="form-control" value="${aluno.nome}">
						</div>
						<div class="form-group">
							<label for="password" class="text-info">Password:</label><br>
							<input type="password" name="senha" id="password"
								class="form-control" value="${aluno.senha}">
						</div>
						<div class="form-group">
							<label for="remember-me" class="text-info">
							<span>Lembrar senha</span> 
							<span><input id="remember-me" name="remember-me"
									type="checkbox"></span></label><br> <input type="submit"
								name="submit" class="btn btn-info btn-md" id="validar" value="submit">
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>

