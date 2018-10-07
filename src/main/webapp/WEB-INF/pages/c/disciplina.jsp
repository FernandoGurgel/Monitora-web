<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<div class="container">
	<div class="row">
		<div class="col-12">
			<h3>Lista Disciplina</h3>

			<div class="row justify-content-end align-items-center">
				<div class="col-4 ">
					<form class="input-group" action="/disciplina/pesquisar" method="get">
					
					<input type="text" class="form-control"
						placeholder="Pesquisar por nome" name="pesquisa">
					<div class="input-group-append">
						<button title="Perquisar" class="btn btn-outline-secondary" type="submit" > 
						<i class="fas fa-search"></i></button>
					</div>
					</form>
				</div>
				<div class="col-2 my-2 ">
					<a class="btn btn-sm btn-outline-secondary"
						href="/disciplina/cadastrar"><i class="fas fa-plus"></i> Nova
						Disciplina</a>
				</div>
			</div>

		</div>
	</div>
	<br/>
	<div class="row">
		<div class="col-12">

			<div class="span10 offset1">

				<table class="table table-hover table-fixed ">

					<!--Table head-->
					<thead>
						<tr>
							<th>ID</th>
							<th>Nome</th>
							<th>Descrição</th>
							<th>Monitor</th>
							<th>Quantidade de Vagas</th>
							<th>Ações</th>
						</tr>
					</thead>
					<!--Table head-->

					<!--Table body-->
					<tbody>
						<c:forEach var="dis" items="${lista}">
							<tr>
								<th scope="row">${dis.id}</th>
								<td>${dis.nome}</td>
								<td>${dis.informacoes}</td>
								<td>teste</td>
								<td>${dis.qtdVagas}</td>
								<td><a class="btn btn-primary" title="Editar"
									href="/disciplina/editar?id=${l.id}" role="button"><i
										class="far fa-edit"></i></a> <a role="button"
									class="btn btn-danger" href="/disciplina/excluir?id=${l.id}"
									title="Excluir"><i class="far fa-trash-alt"></i></a></td>
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
