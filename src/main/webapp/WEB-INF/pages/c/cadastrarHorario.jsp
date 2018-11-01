<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>
<br>
<div class="container">
	<div class="row">
		<div class="col">
			<h1>${titulo }</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<form class="form-horizontal" method="post">
				<div class="form-group">
				
					<label for="nomeSala">Sala:</label> 
						<select class="form-control col" name="codsala"
							id="nomeSala" required>
	
								<c:forEach var="sal" items="${lista}">
										<option value="${sal.codsala}">${sal.nome}</option>
								</c:forEach>
							
						</select>
					
				</div>

				<div class="form-row">
					<div class="form-group col-md-5 col-12">

						<label for="CBDiasSemanaSala">Dia da Semana: </label>
						<select
							class="form-control" name="dia" id="CBvagasDisciplina" required>

							<option>Segunda-Feira</option>
							<option>Terça-Feira</option>
							<option>Quarta-Feira</option>
							<option>Quinta-Feira</option>
							<option>Sexta-Feira</option>

						</select>
					</div>
					<div class="form-group col-md-3 col">
						<label for="CBHorarioSalaInicio">Horário Inicio: </label> <select
							class="form-control" name="inicio" id="CBHorarioSalaInicio"
							required>


							<option value="07:00">07:00</option>
							<option value="08:00">08:00</option>
							<option value="09:00">09:00</option>
							<option value="10:00">10:00</option>
							<option value="11:00">11:00</option>
							<option value="12:00">12:00</option>

							<option value="13:00">13:00</option>
							<option value="14:00">14:00</option>
							<option value="15:00">15:00</option>
							<option value="16:00">16:00</option>
							<option value="17:00">17:00</option>
							<option value="18:00">18:00</option>

							<option value="19:00">19:00</option>
							<option value="20:00">20:00</option>
							<option value="21:00">21:00</option>
							<option value="22:00">22:00</option>
							<option value="23:00">23:00</option>


						</select>
					</div>

					<div class="form-group col-md-3 col">
						<label for="CBHorarioSalaFim">Horário Fim: </label> <select
							class="form-control" name="fim" id="CBHorarioSalaFim" required>

							<option value="07:59">07:59</option>
							<option value="08:59">08:59</option>
							<option value="09:59">09:59</option>
							<option value="10:59">10:59</option>
							<option value="11:59">11:59</option>
							<option value="12:59">12:59</option>

							<option value="13:59">13:59</option>
							<option value="14:59">14:59</option>
							<option value="15:59">15:59</option>
							<option value="16:59">16:59</option>
							<option value="17:59">17:59</option>
							<option value="18:59">18:59</option>

							<option value="19:59">19:59</option>
							<option value="20:59">20:59</option>
							<option value="21:59">21:59</option>
							<option value="22:59">22:59</option>
							<option value="23:59">23:59</option>


						</select>
					</div>
					<div
						class="form-group col-md-1 col-1 btn-add justify-content-center">
						<button class="btn btn-outline-dark align-bottom" type="button"
							id="addDia">
							<i class="fas fa-plus"></i>
						</button>
					</div>
				</div>
				<div class="form-group">
					<h4>Horário Salvo</h4>
					<table class="table table-hover">
						<thead>
							<tr>
								<th col="col">cod.</th>
								<th col="col">Semana</th>
								<th col="col">Hora inicio</th>
								<th col="col">Hora fim</th>
								<th></th>
							</tr>
						</thead>
						<tbody class="addDia">

						</tbody>
					</table>
				</div>

				<div class="row justify-content-between">

					<a class="btn btn-danger" href="/coordenandor/sala" role="button"><i
						class="fas fa-times"></i> Cancelar</a>
					<button class="btn btn-success" type="submit">
						<i class="far fa-save"></i> Cadastrar
					</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript" src="/static/js/sala.js" />
<jsp:include page="rodape.jsp"></jsp:include>

