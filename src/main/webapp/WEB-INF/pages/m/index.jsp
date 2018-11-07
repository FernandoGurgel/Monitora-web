<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-12">

         		<h1 class="display-4" id="tituloGerenciarMonitoria">Gerencia Monitoria </h1>
         
       			<div class="row justify-content-end align-items-center">
           
				
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
					    <tr>
					      <th scope="row">13:00</th>
					      <th>14:59</th>
					      <th> </th>
					        <th> Sala 5  </th>
					      <td> <button type="button" class="btn btn-danger">Excluir</button>
					    </tr>
					
					  </tbody>
					  <!--Table body-->
					
					</table>
    		</div>
		</div>
		</div>
	</div>
</div>
<jsp:include page="rodape.jsp"></jsp:include>

