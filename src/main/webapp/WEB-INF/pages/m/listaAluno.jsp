<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>

<br>


<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-12">

		
		<h1 class="display-4" id="tituloGerenciarMonitoria">Lista de Alunos</h1>
		
         <br>
      
      
     
         <br>
          <div class="form-row">
            <div class="col-md-3 mb-3">
      <label for="validationCustom02">Disciplina:</label>
      <input type="text" class="form-control" id="textDisciplina" placeholder="TADS" value="" disabled>
      </div> 
              <div class="col-md-3 mb-3">
      <label for="validationCustom02">Sala:</label>
      <input type="text" class="form-control" id="textSala" placeholder="LAB V" value="" disabled>
      </div> 
      
    <div class="col-md-4 mb-3 offset-md-10">
					<a class="btn btn-info"
						href="adicionarHorario"><i class="fas fa-plus "></i> Imprimir
					</a>
				</div>
         
        
				
				</div>
          
        	<!--Table-->
              
			<div class="container">
			<div class="span10 offset1">
			
			
			              
			              
				<table class="table table-hover table-fixed table-striped table-bordered">
				<caption>lista de alunos matriculados</caption>
				  <!--Table head-->
				  <thead>
				   <tr>
        <th>ALUNO</th>
      <th>HORÁRIO</th>
      <th>Lista de Chamada</th>
      
     
    </tr>
  </thead>
			<!--Table head-->

  <!--Table body-->
  <tbody>
    <tr>
       
      <th scope="row">Jonathan</th>
      <th>13h~13:59</th>
      <th><div class="custom-control custom-checkbox">
  <input type="checkbox" class="custom-control-input" id="customCheck" >
  <label class="custom-control-label" for="customCheck">Faltou</label>
</div></th>
      
    
     
      
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

