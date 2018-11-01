<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-12">

			<h2>${Titulo }</h2>

			<form method="post">
				<fieldset>

					<input type="hidden" name="id" value="${aluno.id}" />

					<!-- TEXTO-->
					<div class="form-group">
						<label class="col control-label" for="idNome">Nome</label>
						<div class="col">
							<input id="idNome" name="nome" type="text"
								placeholder="Nome do usuário"
								pattern="[A-Za-z\s]+$" title="Nome inválido, este campo não aceita caracteres especiais  !"
								class="form-control input-md"
								required value="${aluno.nome}">

						</div>
					</div>
					<div class="form-row">

						<!-- TEXTO-->
						<div class="form-group col">
							<label class="col control-label" for="idDepto">Matricula</label>
							<div class="col">
								<input id="idMatricula" name="matricula" type="text"
									placeholder="Número de Matriucula"
									pattern="[0-9]+$" title="Matrícula inválido, este campo aceita apenas números !"
									class="form-control input-md" value="${aluno.matricula}"
									required>

							</div>
						</div>

						<!-- TEXTO-->
						<div class="form-group col">
							<label class="col control-label" for="idUsuario">Curso</label>
							<div class="col">
								<input id="idCurso" name="curso" type="text"
								title="Matrícula inválido, este campo aceita apenas números !"
									placeholder="Nome do Curso" class="form-control input-md"
									value="${aluno.curso}" required>

							</div>
						</div>
					</div>

					<!-- TEXTO-->
					<div class="form-group">
						<label class="col control-label" for="idUsuario">E-mail</label>
						<div class="col">
							<input id="idEmail" name="email" type="email" placeholder="Email"
								title=" Email inválido, faltam caracteres ! ( exemplo@email.com )"
								class="form-control input-md" value="${aluno.email}" required>

						</div>
					</div>
					<div class="form-row">

						<!-- TEXTO SENHA-->
						<div class="form-group col">
							<label class="col control-label" for="idSenha">Senha</label>
							<div class="col">
								<input id="idSenha" name="senha" type="password"
									placeholder="Digite a senha" class="form-control input-md"
									value="${aluno.senha}" required>

							</div>
						</div>

						<!-- DropDown (ComboBOX) -->
						<div class="form-group col">
							<label class="col control-label" for="idTipo">Nível</label>
							<div class="col row-md-10">
								<select id="idTipo" name="tipo" class="form-control">
									<option value="1">Aluno</option>
									<option value="2">Monitor</option>
								</select>
							</div>
						</div>
					</div>

					<!-- BotÃ£o -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="idConfirmar"></label>
						<div class="col-md-8">
							<button id="idConfirmar" name="idConfirmar"
								class="btn btn-primary" type="submit">Confirmar</button>
							<button id="idCancelar" class="btn btn-danger" type="reset">Limpar</button>
						</div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>

