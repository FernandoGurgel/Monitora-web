<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>
<br />
<div class="container">
	<div class="row">
		<div class="col-12">
			<h3>Lista Sala</h3>

			<div class="row justify-content-end align-items-center">
				<div class="col-4 ">
					<form class="input-group" action="/sala/pesquisar" method="get">
					
					<input type="text" class="form-control"
						placeholder="Pesquisar por nome" name="pesquisa">
					<div class="input-group-append">
						<button title="Perquisar" class="btn btn-outline-secondary" type="submit" > 
						<i class="fas fa-search"></i></button>
					</div>
					</form>
				</div>
				<div class="col-1.3 my-2 ">
					<a class="btn btn-sm btn-outline-secondary" href="/sala/addSala"><i
						class="fas fa-plus"></i> Nova Sala</a>
				</div>
			</div>

		</div>
	</div>
	<br />
	<div class="row">
		<div class="col-12 ">
			<table class="table table-hover">

				<!--Table head-->
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nome</th>
						<th></th>
						<th></th>
						<th scope="col">Açoes</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="sal" items="${lista }">
						<tr>
							<th scope="row">${ sal.codsala}</th>
							<td>${sal.nome }</td>
							<td></td>
							<td></td>
							<td>
								<a class="btn btn-success" role="button" href="/sala/addHorario?codsala=${sal.codsala }" title="Cadastrar Horário">
									<i class="far fa-calendar-plus"></i>
								</a>
								<a class="btn btn-primary" role="button"
									href="/sala/Editar?codsala=${sal.codsala}" title="Detalhe"><i
									class="far fa-calendar-alt"></i></a> 
								<a role="button"
								class="btn btn-danger" href="/sala/excluir?codsala=${sal.codsala }" title="Excluir"><i
										class="far fa-trash-alt"></i>
									</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>