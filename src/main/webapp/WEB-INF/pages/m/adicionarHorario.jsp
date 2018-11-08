<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-12">

		<h1 class="display-4" id="tituloGerenciarMonitoria">Gerencia Monitoria </h1>
		
         <br>
         <br>
         
        	<!--Table-->
              
			<div class="container">
			<div class="span10 offset1">
			              
			              
				<table class="table table-hover table-fixed table-striped table-bordered">
				<caption>Selecione uma Sala</caption>
				  <!--Table head-->
				  <thead>
				    <tr>
				      <th>ID</th>
				      <th>Sala</th>
				      <th>Dia da Semana</th>
				      <th>Horário Inicio</th>
				      <th>Horário Fim</th>
				          <th>Ações</th>
				    </tr>
				  </thead>
				  <!--Table head-->
				
				  <!--Table body-->
				  <tbody>
				    <m:forEach var="datadisp" items="${lista}">
				    	<tr>
						      <th scope="row">${datadisp.id}</th>
						      <td>-</td>
						      <td>${datadisp.dia}</td>
						      <td>${datadisp.inicio}</td>
						      <td>${datadisp.fim}</td>	
						      <td>
						      <a role="button"
								class="btn btn-success" href="/monitor/addreserva?id=${datadisp.id }" title="Selecionar"><i
										class="far fa-calendar-plus"></i>
									</a> </td>						
						</tr>
					</m:forEach>						

				    				    
				  </tbody>
				  <!--Table body-->
				
				</table>
			</div>
			</div>
			
			<!--Table-->

		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>

