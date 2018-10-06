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
					placeholder="Pesquisar por nome" aria-label="Search" autofocus
					maxlength="120">
			</div>
			<div class="col-2 my-2">
				<a class="btn btn-sm btn-outline-secondary"
					href="/disciplina/cadastrar">Nova Disciplina</a>
			</div>
		</div>

		<div class="span10 offset1">


			<table class="table table-hover table-fixed ">

				<!--Table head-->
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Descrição</th>
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
							<td>${dis.qtdVagas}</td>

							<td>
								<a class="btn btn-primary" href="/disciplina/editar?id=${l.id}" role="button">Editar</a>
								<a role="button" class="btn btn-danger" href="/disciplina/excluir?id=${l.id}">Excluir</a> 
							</td>
						</tr>
					</c:forEach>
				</tbody>
				<!--Table body-->

			</table>
		</div>
	</div>
<jsp:include page="rodape.jsp"></jsp:include>
