<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<h1 id="TituloEditarDisciplina">Cadastrar Disciplina</h1>


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
			rows="3" placeholder="Escreva uma breve descrição" name="informacoes"
			required></textarea>
	</div>

	<div class="form-group">
		<label for="CBvagasDisciplina">Quantidade de Vagas</label> <select
			class="form-control col-md-1" name="qtdVagas" id="CBvagasDisciplina"
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
<jsp:include page="rodape.jsp"></jsp:include>