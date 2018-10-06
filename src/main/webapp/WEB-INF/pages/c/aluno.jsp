<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>


<!--Fim Topo-->


<!--Table-->

<div class="container">
	<div class="row justify-content-end">
		<div class="col-4 ">
			<input class="form-control" type="search" size="50"
				placeholder="Pesquisar por aluno ou matricula" aria-label="Search"
				autofocus maxlength="120">
		</div>
		<div class="col-2 my-2">
			<a class="btn btn-sm btn-outline-secondary" href="/aluno/cadastrar">Novo
				Aluno</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="span10 offset1">
				<table class="table table-hover table-fixed ">

					<!--Table head-->
					<thead>
						<tr>
							<th>ID</th>
							<th>Nome</th>
							<th>Matricula</th>
							<th>Curso</th>
							<th>Email</th>

							<th>Tipo</th>
							<th>Ações</th>
						</tr>
					</thead>
					<!--Table head-->

					<!--Table body-->
					<tbody>
						<c:forEach var="aluno" items="${lista}">
							<tr>
								<th scope="row">${aluno.id}</th>
								<td>${aluno.nome}</td>
								<td>${aluno.matricula}</td>
								<td>${aluno.curso}</td>
								<td>${aluno.email}</td>
								<td>${aluno.tipoaluno}</td>

								<td><a class="btn btn-primary"
									href="/coordenandor/editarAluno?id=${ aluno.id}" role="button">Editar</a>
									<a href="/coordenandor/deletarAluno?id=${ aluno.id}">
										<button type="button" class="btn btn-danger">Excluir</button>
								</a>
							</tr>
						</c:forEach>
					</tbody>
					<!--Table body-->
				</table>
			</div>
		</div>
	</div>
</div>

<jsp:include page="rodape.jsp"></jsp:include>
