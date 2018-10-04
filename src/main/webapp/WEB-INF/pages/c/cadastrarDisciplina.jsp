<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>Cadastrar Disciplina</title>
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
					href="GerenciaDisciplina.html">Voltar <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#"></a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> OpÃ§Ãµes </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="CadastrarDisciplina.html">Cadastrar
							Disciplina</a> <a class="dropdown-item" href="ListarDisciplina.html">Listar
							Disciplina</a>

					</div></li>
			</ul>

			<!--botao sair -->
			<a id="botaoSair" href="index.html" class="btn btn-outline-danger"
				role="button" aria-pressed="true">Sair</a>


		</div>


	</nav>

	<br>
	<!--fim topo-->


	<h1 id="TituloEditarDisciplina">Cadastrar Disciplina</h1>



	<!--inicio formulario-->




	<form class="form-horizontal" id="FormularioCadastroDisciplina"
		method="post">
		<div class="form-group">
			<label for="nomeDisciplina">Nome:</label> <input type="text"
				class="form-control col-md-4" name="nome" id="nomedisciplina"
				placeholder="Escreva um nome para disciplina" required>
		</div>
		<div class="form-group">
			<label for="TAdescricaodisciplina">Descrição:</label>
			<textarea class="form-control col-md-4" id="TAdescricaodisciplina"
				rows="3" placeholder="Escreva uma breve descrição"
				name="informacoes" required></textarea>
		</div>

		<div class="form-group">
			<label for="CBvagasDisciplina">Quantidade de Vagas</label> 
			<select class="form-control col-md-1" name="qtdVagas" id="CBvagasDisciplina"
				required>

				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>
		</div>

		<button class="btn btn-primary" type="submit">Cadastrar</button>
		<a class="btn btn-danger" href="/coordenador/" role="button">Cancelar</a>
	</form>


	<!-- fim formulario -->




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
