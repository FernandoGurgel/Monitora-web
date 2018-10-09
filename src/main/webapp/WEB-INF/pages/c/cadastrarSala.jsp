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
			<form class="form-horizontal">
				<div class="form-group">
					<label for="nomeSala">Nome:</label> <input type="text"
						class="form-control col-md-4" id="nomedisciplina"
						placeholder="Escreva um nome para Sala" required="">
				</div>



			</form>

			<form id="FormularioComboBoxCadastroSala">
				<div class="form-row">
					<div class="form-group col-md-3">

						<label for="CBDiasSemanaSala">Dia da Semana: </label> <select
							class="form-control " id="CBvagasDisciplina" required="">

							<option>Segunda-Feira</option>
							<option>TerÃ§a-Feira</option>
							<option>Quarta-Feira</option>
							<option>Quinta-Feira</option>
							<option>Sexta-Feira</option>

						</select>
					</div>
					<div class="form-group col-md-2">
						<label for="CBHorarioSalaInicio">HorÃ¡rio Inicio: </label> <select
							class="form-control " id="CBHorarioSalaInicio" required="">


							<option>07:00</option>
							<option>08:00</option>
							<option>09:00</option>
							<option>10:00</option>
							<option>11:00</option>
							<option>12:00</option>

							<option>13:00</option>
							<option>14:00</option>
							<option>15:00</option>
							<option>16:00</option>
							<option>17:00</option>
							<option>18:00</option>

							<option>19:00</option>
							<option>20:00</option>
							<option>21:00</option>
							<option>22:00</option>
							<option>23:00</option>


						</select>
					</div>

					<div class="form-group col-md-2">
						<label for="CBHorarioSalaFim">HorÃ¡rio Fim: </label> <select
							class="form-control" id="CBHorarioSalaFim" required="">


							<option>07:59</option>
							<option>08:59</option>
							<option>09:59</option>
							<option>10:59</option>
							<option>11:59</option>
							<option>12:59</option>

							<option>13:59</option>
							<option>14:59</option>
							<option>15:59</option>
							<option>16:59</option>
							<option>17:59</option>
							<option>18:59</option>

							<option>19:59</option>
							<option>20:59</option>
							<option>21:59</option>
							<option>22:59</option>
							<option>23:59</option>


						</select>
					</div>
				</div>

			</form>

			<input id="botaoSalvarCadastrarSala" class="btn btn-primary"
				type="submit" value="Cadastrar"> <a class="btn btn-danger"
				href="GerenciaSala.html" role="button">Cancelar</a>
		</div>

	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>

