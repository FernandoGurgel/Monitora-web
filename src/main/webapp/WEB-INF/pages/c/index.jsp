<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<!--CARTÃES DE ESCOLHA-->
<div class="card-group">

	<div class="card text-center" style="width: 18rem;">
		<div class="card-body">
			<img src="img/estudante.png" width="30" height="30"
				class="d-inline-block align-top" alt="">
			<h5 class="card-title">Gerenciar Aluno</h5>
			<p class="card-text">Aluno Cadastrar, Vizualizar, Editar e
				Excluir</p>
			<a href="aluno" class="btn btn-primary">Entrar</a>
		</div>
	</div>

	<div class="card text-center" style="width: 18rem;">
		<div class="card-body">
			<img src="img/book.png" width="30" height="30"
				class="d-inline-block align-top" alt="">
			<h5 class="card-title">Gerenciar Disciplina</h5>
			<p class="card-text">Disciplina Cadastrar, Vizualizar, Editar e
				Excluir</p>
			<a href="disciplina" class="btn btn-primary">Entrar</a>
		</div>
	</div>

	<div class="card text-center" style="width: 18rem;">
		<div class="card-body">
			<img src="img/class.png" width="30" height="30"
				class="d-inline-block align-top" alt="">
			<h5 class="card-title">Gerenciar Salas de Aula</h5>
			<p class="card-text">Sala Cadastrar, Vizualizar, Editar e Excluir</p>
			<a href="sala" class="btn btn-primary">Entrar</a>
		</div>
	</div>
</div>

<jsp:include page="rodape.jsp"></jsp:include>
