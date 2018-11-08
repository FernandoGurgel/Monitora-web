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
						      <th scope="row">${reservas[0]}</th>
						      <td>${reservas[1]}</td>
						      <td>${reservas[2]}</td>
						      <td>${reservas[3]}</td>
						      <td>${reservas[4]}</td>	
						      <td>${reservas[5]}</td>	
						      <td>
						      <a role="button"
								class="btn btn-primary" href="/monitor/cadastrarhorario?id=${reservas[0] }" title="Selecionar"> Selecionar
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