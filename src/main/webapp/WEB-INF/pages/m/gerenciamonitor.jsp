<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-12">

         		<h1 class="display-4" id="tituloGerenciarMonitoria">Gerencia Monitoria </h1>
         
       			<div class="row justify-content-end align-items-center">
       								
					
				<h4>${disciplina.nome}</h4>  			
           
				<div class="col-3 my-4 ">
				  <a
						href="adicionarHorario">
				  <button name ="jfs" id = "jfs" type="button" class="btn btn-success">
			    		<span class="fas fa-plus"></span> Adicionar Novo Horário
			  	  </button>
					</a>
				</div>
			</div>
        
			<m:set var = "horariosInscritos" value = "0"/>
              <!--Table-->
              
			<div class="container">
				<div class="span10 offset1">
              
              
					<table class="table table-hover table-fixed table-striped table-bordered">
					 <caption>Programação de Monitoria</caption>
					
					  <!--Table head-->
					  <thead   class="thead">
					    <tr>
					      <th>ID</th>
					      <th>Horário Inicio</th>
					      <th>Horário Fim</th>
					      <th>Dia</th>
					      <th>Sala</th>
					      <th>Ações</th>
					    </tr>
					  </thead>
					  <!--Table head-->
					
					  <!--Table body-->

					  <tbody>
					  
						  <m:forEach var="reservas" items="${lista}" varStatus="rateLoop">

			
						   <m:if test="${reservas.codmonitor.id eq monitoria}">
						   	<m:set var = "horariosInscritos" value = "${horariosInscritos + 1}"/>
					    	<tr>

							      <th scope="row">${reservas.rescodigo}</th>
							      <td>${reservas.horaIncio}</td>
							      <td>${reservas.horaFim}</td>
							      <td>${reservas.dia}</td>	
							      <td>${reservas.codsala.nome}</td>	

							      <td>
							      <a role="button"
									class="btn btn-primary" href="/monitor/removereserva?rescodigo=${reservas.rescodigo }" title="Alunos Cadastrados"><i
											class="far fa-calendar-alt"></i>
										</a> 
							      <a role="button"
									class="btn btn-danger" href="/monitor/removereserva?rescodigo=${reservas.rescodigo }" title="Remover Horário"><i
											class="far fa-trash-alt"></i>
										</a> </td>	
																				
							</tr>	
							</m:if>
						 </m:forEach>	
					  </tbody>

					  <!--Table body-->
					
					</table>
    		</div>
		</div>
	    <script>document.getElementById("jfs").disabled = false;</script>
		</div>
			<h4>Horários Cadastrados: 
			<m:choose>
				 <m:when test="${horariosInscritos == 0}">
					<m:out value = "00/06"/>
			     </m:when>
				 <m:when test="${horariosInscritos >= 6}">
					<m:out value = "06/06"/>
				    <script>document.getElementById("jfs").disabled = true;</script>
			     </m:when>
			     <m:otherwise>
			     	<m:out value = "0${horariosInscritos}/06"/>
			     </m:otherwise>
			</m:choose>
			</h4>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>

