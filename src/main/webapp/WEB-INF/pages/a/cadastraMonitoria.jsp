<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>
        <h1 class="display-4" id="tituloGerenciarMonitoria"> Inscrever Monitorias </h1>
         <br>
         <br>
         
        <!--Table-->
              
<div class="container">
<div class="span10 offset1">
              
              
<table class="table table-hover table-fixed table-striped table-bordered">
<caption>Selecione ás Disciplinas</caption>
  <!--Table head-->
  <thead>
    <tr>
      <th>ID</th>
      <th>Disciplina</th>
      <th>Monitor</th>
      <th>Sala </th>
      <th>Dia da Semana</th>
      <th>Horário Inicio</th>
      <th>Horário Fim</th>
      <th>Vagas Restantes</th>
          <th>Ações</th>
    </tr>
  </thead>
  <!--Table head-->

  <!--Table body-->
  <tbody>
  

    <tr>
    <a:forEach var="reservas" items="${lista}">
				    	<tr>
						      <td scope="row">${reservas.id}</th><th>
							 <a:forEach var="disciplina" items="${listaD }">
									<a:if test="${disciplina.aluno.nome eq reservas.monitor}">
										${disciplina.nome}
									</a:if>
							  </a:forEach>
							  </td>
						      <td>${reservas.monitor}</td>
						      <td>${reservas.sala}</td>
						      <td>${reservas.diaSemana}</td>
						      <td>${reservas.horaInicio}</td>	
						      <td>${reservas.horaFim}</td>	
						      <td>
							 <a:forEach var="disciplina" items="${listaD }">
									<a:if test="${disciplina.aluno.nome eq reservas.monitor}">
										${disciplina.qtdVagas}
									</a:if>
							  </a:forEach>
							  </td>
						      <td>
						      <a role="button"
								class="btn btn-primary" href="/aluno/cadastrarhorario?id=${reservas.id }" title="Selecionar"> Sair
							  </a> </td>						
						</tr>
	</a:forEach>	
	
  </tbody>
  <!--Table body-->

</table>
    </div>
</div>

<!--Table-->
<jsp:include page="rodape.jsp"></jsp:include>