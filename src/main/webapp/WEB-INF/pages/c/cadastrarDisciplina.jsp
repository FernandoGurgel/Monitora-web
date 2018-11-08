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
					<input type="text" class="form-control col" name="nome" id="nomedisciplina"
						placeholder="Escreva um nome para disciplina" value="${disciplina.nome }" required>
				</div>
				<div class="form-group">
					<label for="TAdescricaodisciplina">Descrição:</label>
					<textarea class="form-control col" id="TAdescricaodisciplina"
						rows="3" placeholder="Escreva uma breve descrição"
						name="informacoes" required>${disciplina.informacoes }</textarea>
				</div>
				<div class="form-group">
					<label for="TAdescricaodisciplina">Monitor:</label> 
					<select
					class="form-control col" name="nomeMonitor" id="nome" required>
					<c:forEach var="aluno" items="${Monitor}"> 
					<option value="${aluno.nome}"  > ${aluno.nome} </option>
					</c:forEach>
					</select>
					
				</div>

				<div class="form-row">
					<div class="form-group col">
						<label for="CBvagasDisciplina">Quantidade de Vagas</label> 
						<select
							class="form-control col" name="qtdVagas"
							id="CBvagasDisciplina" disabled required>

						
							<option selected value="12">12</option>
						</select>
					</div>
					<div class="form-group col">
						<label for="CBvagasDisciplina">Data Inicio</label>
						<input type="date" class="form-control" value="${disciplina.dataInicio }" name="dataInicio" min="2018-01-01" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" required >
					</div>
					<div class="form-group col">
						<label for="CBvagasDisciplina">Data Fim</label>
						<input type="date" class="form-control" name="dataFim" value="${disciplina.dataFim}" min="2018-01-01" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" required>
					</div>					
				</div>
				<button class="btn btn-primary" type="submit">Cadastrar</button>
				<a class="btn btn-danger" href="/coordenador/" role="button">Cancelar</a>
			</form>
		</div>
	</div>
</div>
<script src="/static/js/monitoria.js"></script>

<jsp:include page="rodape.jsp"></jsp:include>