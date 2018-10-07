<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<div class="container">

	<div class="row">
		<div class="col-12">

			<h1>Cadastrar Disciplina</h1>
		</div>
	</div>

	<div class="row">

		<div class="col-12">

			<form class="form-horizontal "
				method="post">
				<div class="form-group">
					<label for="nomeDisciplina">Nome:</label> <input type="text"
						class="form-control col-md-6" name="nome" id="nomedisciplina"
						placeholder="Escreva um nome para disciplina" required>
				</div>
				<div class="form-group">
					<label for="TAdescricaodisciplina">Descrição:</label>
					<textarea class="form-control col-md-6" id="TAdescricaodisciplina"
						rows="3" placeholder="Escreva uma breve descrição"
						name="informacoes" required></textarea>
				</div>
				<div class="form-group">
					<label for="TAdescricaodisciplina">Aluno:</label>
					<input name="aluno" class="form-control col-6" placeholder="Nome Aluno"  required>
				</div>

				<div class="form-group">
					<label for="CBvagasDisciplina">Quantidade de Vagas</label> <select
						class="form-control col-md-1" name="qtdVagas"
						id="CBvagasDisciplina" required>

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
		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>