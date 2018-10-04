<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>Cadastrar Aluno</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/static/estilo.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">


</head>
<body>

	<!--topo-->

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="GerenciaDisciplina.html">DevOps</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="GerenciaAluno.html">Voltar <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#"></a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> OpÃ§Ãµes </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="CadastrarAluno.html">Cadastrar
							Aluno</a> <a class="dropdown-item" href="ListarAluno.html">Listar
							Aluno</a>

					</div></li>
			</ul>

			<!--botao sair -->
			<a id="botaoSair" href="index.html" class="btn btn-outline-danger"
				role="button" aria-pressed="true">Sair</a>


		</div>


	</nav>

	<br>
	<!--fim topo-->

	<!------FORMULARIO---------->

	<form id=formulariocadastroaluno class="form-horizontal" method="post">
		<fieldset>

			<!-- TITULO DO FORMULARIO -->
			<legend>Cadastro do Aluno</legend>

			<!-- TEXTO-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="idNome">Nome</label>
				<div class="col-md-5">
					<input id="idNome" name="nome" type="text"
						placeholder="Nome do usuaÃ¡rio" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- TEXTO-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="idDepto">Matricula</label>
				<div class="col-md-5">
					<input id="idMatricula" name="matricula" type="text"
						placeholder="Numero de Matriucula" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- TEXTO-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="idUsuario">Curso</label>
				<div class="col-md-5">
					<input id="idCurso" name="curso" type="text"
						placeholder="Nome do Curso" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- TEXTO-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="idUsuario">E-mail</label>
				<div class="col-md-5">
					<input id="idEmail" name="email" type="text"
						placeholder="Email" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- TEXTO SENHA-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="idSenha">Senha</label>
				<div class="col-md-5">
					<input id="idSenha" name="senha" type="password"
						placeholder="Digite a senha" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- DropDown (ComboBOX) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="idTipo">NÃ­vel</label>
				<div class="col-md-4 row-md-10">
					<select id="idTipo" name="tipoaluno" class="form-control">
						<option value="1">Aluno</option>
						<option value="2">Monitor</option>
					</select>
				</div>
			</div>

			<!-- BotÃ£o -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="idConfirmar"></label>
				<div class="col-md-8">
					<button id="idConfirmar" name="idConfirmar" class="btn btn-primary" type="submit">Confirmar</button>
					<button id="idCancelar" name="idCancelar" class="btn btn-danger" type="reset">Cancelar</button>
				</div>
			</div>

		</fieldset>
	</form>










	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>


</body>
</html>
