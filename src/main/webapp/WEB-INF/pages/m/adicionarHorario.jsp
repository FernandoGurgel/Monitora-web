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
				      <th>Nome</th>
				      <th>Dia da Semana</th>
				      <th>Horário Inicio</th>
				      <th>Horário Fim</th>
				          <th>Ações</th>
				    </tr>
				  </thead>
				  <!--Table head-->
				
				  <!--Table body-->
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td>Laboratório 5</td>
				      <td>SEXTA-FEIRA</td>
				      <td>14:00</td>
				      <td>15:59</td>
				      <td><input class="btn btn-primary" type="submit" value="Selecionar"> 
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td>Laboratório 5</td>
				      <td>TERÇA-FEIRA</td>
				      <td>16:00</td>
				      <td>17:59</td>      
				 
				      
				      <td><input class="btn btn-primary" type="submit" value="Selecionar"> 
				    </tr>
				    <tr>
				      <th scope="row">3</th> 
				      <td>Laboratório 7</td>
				      <td>QUINTA-FEIRA</td>
				      <td>15:00</td>
				      <td>16:59</td>
				   
				      <td><input class="btn btn-primary" type="submit" value="Selecionar"> 
				    </tr>
				    
				   
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

