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
           
				<div class="col-2">Horários: 0/6</div>
				
				<div class="col-3 my-4 ">
					<a class="btn btn-success"
						href="adicionarHorario"><i class="fas fa-plus"></i> Adicionar Novo Horário
					</a>
				</div>
			</div>
        

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
<<<<<<< HEAD
					<tbody>
    <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
      
       <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
   
    </tr>


 <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
       
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
       
       
        <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr> <tr>
        <th></th>
      <th scope="row"></th>
      <th></th>
      <th></th>
      <th></th>  
      <th></th>
    
     
      
      <th>  <button type="button" class="btn btn-danger">Sair</button> </th>
       </tr>
    
   
  </tbody>
=======
					  <tbody>
					  
						  <m:forEach var="reservas" items="${lista}">
						   <m:if test="${reservas.codmonitor.id eq monitoria}">
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
>>>>>>> origin/segurança
					  <!--Table body-->
					
					</table>
    		</div>
		</div>
		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>

