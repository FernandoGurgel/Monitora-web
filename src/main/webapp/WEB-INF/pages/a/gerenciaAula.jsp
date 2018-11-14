<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<h1 class="display-4" id="tituloGerenciarMonitoria">Gerenciar Aulas</h1>

<div class="row justify-content-end align-items-center">


	<div class="col-3 my-4 ">
		<a class="btn btn-success" href="cadastraMonitoria"><i
			class="fas fa-plus"></i> Inscrever Monitoria </a>

	</div>



</div>


<!--Table-->

<div class="container">
	<div class="span10 offset2">


		<table
			class="table table-hover table-fixed table-striped table-bordered">
			<caption>Disciplinas Matriculadas</caption>

			<!--Table head-->
			<thead class="thead">
				<tr>
					<th>Disciplina</th>
					<th>Horário Inicio</th>
					<th>Horário Fim</th>
					<th>Dia da Semana</th>
					<th>Sala</th>
					<th>Ações</th>
				</tr>
			</thead>
			<!--Table head-->

			<!--Table body-->
			<tbody>
				<a:forEach var="reserva" items="${lista }">

					<tr>
						<th>${reserva.codmonitor}</th>
						<th scope="row">${reserva.horaIncio}</th>
						<th>${reserva.horaFim}</th>
						<th>${reserva.dia}</th>
						<th>${reserva.codsala.nome}</th>


						<th>
							<button type="button" class="btn btn-danger">Sair</button>
						</th>

					</tr>
				</a:forEach>

			</tbody>
			<!--Table body-->

		</table>


	</div>
</div>

<!--Table-->


<jsp:include page="rodape.jsp"></jsp:include>