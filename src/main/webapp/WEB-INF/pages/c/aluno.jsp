<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<div class="container">
	<div class="row">
		<div class="col-12">
			<h3>Lista Aluno</h3>

			<div class="row justify-content-end align-items-center">
				<div class="col-4 ">
					<form class="input-group" action="/aluno/pesquisar" method="get">

						<input type="text" class="form-control"
							placeholder="Pesquisar por nome" name="pesquisa">
						<div class="input-group-append">
							<button title="Perquisar" class="btn btn-outline-secondary"
								type="submit">
								<i class="fas fa-search"></i>
							</button>
						</div>
					</form>
				</div>
				<div class="col-2 my-2 ">
					<a class="btn btn-sm btn-outline-secondary" href="/aluno/cadastrar"><i
						class="fas fa-plus"></i> Nova Aluno</a>
				</div>
			</div>

		</div>
	</div>
	<br />
	<div class="row">
		<div class="col-md-12">
			<div class="span10 offset1">
				<table class="table table-hover table-fixed ">

					<!--Table head-->
					<thead>
						<tr>
							<th>Cod.</th>
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
									href="/coordenador/editarAluno?id=${ aluno.id}" role="button"
									title="Editar"><i class="far fa-edit"></i></a> <a
									href="/coordenador/deletarAluno?id=${ aluno.id}" role="button"
									class="btn btn-danger" title="Excluir"> <i
										class="far fa-trash-alt"></i></a></td>
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
