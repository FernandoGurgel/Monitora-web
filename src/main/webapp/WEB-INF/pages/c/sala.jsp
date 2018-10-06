<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

	<div class="container">
		<div class="span10 offset1">


			<table class="table table-hover table-fixed ">

				<!--Table head-->
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Dia da Semana</th>
						<th>HorÃ¡rio Inicio</th>
						<th>HorÃ¡rio Fim</th>
						<th>AÃ§Ãµes</th>
					</tr>
				</thead>
				<!--Table head-->

				<!--Table body-->
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>LaboratÃ³rio 5</td>
						<td>SEXTA-FEIRA</td>
						<td>14:00</td>
						<td>15:59</td>
						<td><a class="btn btn-primary" href="EditarSala.html"
							role="button">Editar</a>
							<button type="button" class="btn btn-danger">Excluir</button>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>LaboratÃ³rio 5</td>
						<td>TERÃA-FEIRA</td>
						<td>16:00</td>
						<td>17:59</td>


						<td><a class="btn btn-primary" href="EditarSala.html"
							role="button">Editar</a>
							<button type="button" class="btn btn-danger">Excluir</button>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td> LaboratÃ³rio 7</td>
						<td>QUINTA-FEIRA</td>
						<td>15:00</td>
						<td>16:59</td>

						<td><a class="btn btn-primary" href="EditarSala.html"
							role="button">Editar</a>
							<button type="button" class="btn btn-danger">Excluir</button>
					</tr>


				</tbody>
				<!--Table body-->

			</table>
		</div>
	</div>
<jsp:include page="rodape.jsp"></jsp:include>