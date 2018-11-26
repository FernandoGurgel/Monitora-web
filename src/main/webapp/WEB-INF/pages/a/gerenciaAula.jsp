
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>
<br>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-12">
			<h1 class="display-4" id="tituloGerenciarMonitoria">Gerenciar
				Aulas</h1>

			<div class="row justify-content-end align-items-center">


				<div class="col-3 my-4 ">
					<a class="btn btn-success" href="cadastraMonitoria"><i
						class="fas fa-plus"></i> Inscrever Monitoria </a>

				</div>



			</div>



			<!--Table-->
			<a:set var="horariosInscritos" value="0" />
			<div class="container">
				<div class="span10 offset2">


					<table
						class="table table-hover table-fixed table-striped table-bordered">
						<caption>Disciplinas Matriculadas</caption>

						<!--Table head-->
						<thead class="thead">
							<tr>
								<th>Disciplina</th>
								<th>Monitor</th>
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
							<a:forEach var="reserva" items="${lista }" varStatus="rateLoop">

								<a:set var="horariosInscritos" value="${horariosInscritos+1}" />
								<tr>
									<a:forEach var="disciplina" items="${listaD }">
										<a:if test="${disciplina.aluno.id eq reserva.codmonitor.id}">
											<th>${disciplina.nome}</th>
										</a:if>
									</a:forEach>

			<!--Table head-->
			<thead class="thead">
				<tr>
					<th>Disciplina</th>
					<th>Monitor</th>
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
				<a:forEach var="reserva" items="${lista }" varStatus="rateLoop">

				<a:set var = "horariosInscritos" value = "${horariosInscritos+1}"/>
					<tr>
						<a:forEach var="disciplina" items="${listaD }">
							<a:if test="${disciplina.aluno.id eq reserva.codmonitor.id}">
								<th>${disciplina.nome}</th>
							</a:if>
						</a:forEach>
						
						<th>${reserva.codmonitor.nome}</th>
						
						
						<th scope="row">${reserva.horaIncio}</th>
						<th>${reserva.horaFim}</th>
						<th>${reserva.dia}</th>
						<th>${reserva.codsala.nome}</th>


						<th>
							<a type="role"
								class="btn btn-danger" href="/aluno/sairhorario?id=${reserva.rescodigo }" title="Sair"> Sair
							</a>
						</th>

								</tr>
							</a:forEach>

						</tbody>
						<!--Table body-->

					</table>

          Horários Inscritos: <a:out value = "${horariosInscritos}"/>


				</div>
			</div>
		</div>
	</div>
</div>
<!--Table-->

<jsp:include page="rodape.jsp"></jsp:include>