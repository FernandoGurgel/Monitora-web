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
				<div class="col-2 my-2 ">
					<a class="btn btn-sm btn-outline-secondary" href="/sala/cadastrar"><i
						class="fas fa-plus"></i> Nova Sala</a>
				</div>
			</div>

		</div>
	</div>
	<br />
	<div class="row">
		<div class="col-12 span10 offset1">
			<table class="table table-hover table-fixed ">

				<!--Table head-->
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Açoes</th>
					</tr>
				</thead>
				<!--Table head-->

				<!--Table body-->
				<tbody>
					<c:forEach var="sal" items="${lista }">

						<tr>
							<th scope="row">${ sal.id}</th>
							<td>${sal.nome }</td>
							<td><a class="btn btn-primary"
								href="/sala/Editar?id=${sal.id}" role="button"><i
									class="far fa-calendar-alt"></i></a> <a role="button"
								class="btn btn-danger" href="/sala/excluir?id=${sal.id }">Excluir
									</button>
						</tr>
					</c:forEach>



				</tbody>
				<!--Table body-->

			</table>
		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>