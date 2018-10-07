<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>
<br/>
<div class="container d-flex justify-content-center">
	<div class="row d-flex align-items-center">
		<div class="col-12 align-items-center">
			<div class="card-group">
				<div class="card text-center" style="width: 18rem;">
					<div class="card-body">
						<img src="/static/img/estudante.png" width="30" height="30"
							class="d-inline-block align-top" alt="">
						<h5 class="card-title">Gerenciar Aluno</h5>
						<p class="card-text">Aluno Cadastrar, Vizualizar, Editar e
							Excluir</p>
						<a href="aluno" class="btn btn-primary">Entrar</a>
					</div>
				</div>

				<div class="card text-center" style="width: 18rem;">
					<div class="card-body">
						<img src="/static/img/book.png" width="30" height="30"
							class="d-inline-block align-top" alt="">
						<h5 class="card-title">Gerenciar Disciplina</h5>
						<p class="card-text">Disciplina Cadastrar, Vizualizar, Editar
							e Excluir</p>
						<a href="disciplina" class="btn btn-primary">Entrar</a>
					</div>
				</div>

				<div class="card text-center" style="width: 18rem;">
					<div class="card-body">
						<img src="/static/img/class.png" width="30" height="30"
							class="d-inline-block align-top" alt="">
						<h5 class="card-title">Gerenciar Salas de Aula</h5>
						<p class="card-text">Sala Cadastrar, Vizualizar, Editar e
							Excluir</p>
						<a href="sala" class="btn btn-primary">Entrar</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>
