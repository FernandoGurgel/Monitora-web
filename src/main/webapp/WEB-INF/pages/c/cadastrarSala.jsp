<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>
<br>
<div class="container">

	<div class="row">
		<div class="col-12">

			<h1>${titulo}</h1>
		</div>
	</div>

	<div class="row">

		<div class="col-12">

			<form class="form-horizontal " method="post">
				<div class="form-group">
					<label for="nomeDisciplina">Nome:</label> 
					<input type="text" class="form-control col" name="nome" id="nomesala"
						placeholder="Escreva um nome para disciplina" value="${sala.nome }" required>
				</div>
				<button class="btn btn-primary" type="submit">Cadastrar</button>
				<a class="btn btn-danger" href="/coordenador/sala" role="button">Cancelar</a>
			</form>
		</div>
	</div>
</div>
<script src="/static/js/monitoria.js"></script>

<jsp:include page="rodape.jsp"></jsp:include>