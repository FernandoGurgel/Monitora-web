<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>
<br/>
 
        
        <!--CARTÕES DE ESCOLHA-->
        <div class="card-group">

<div class="card text-center" style="width: 18rem;">
  <div class="card-body">
      <img src="img/coordenador.png" width="30" height="30" class="d-inline-block align-top" alt="">
    <h5 class="card-title">Coordenador</h5>
    <p class="card-text">Acesso apenas para coordenador</p>
    <a href="coordenador/" class="btn btn-primary">Entrar</a>
  </div>
</div>

<div class="card text-center" style="width: 18rem;">
  <div class="card-body">
      <img src="img/monitor.png" width="30" height="30" class="d-inline-block align-top" alt="">
    <h5 class="card-title">Monitor</h5>
    <p class="card-text">Acesso Apenas para Monitor</p>
    <a href="monitor/" class="btn btn-primary">Entrar</a>
  </div>
</div>

<div class="card text-center" style="width: 18rem;">
  <div class="card-body">
      <img src="img/estudante.png" width="30" height="30" class="d-inline-block align-top" alt="">
    <h5 class="card-title">Aluno</h5>
    <p class="card-text">Acesso ao aluno</p>
    <a href="aluno/" class="btn btn-primary">Entrar</a>
  </div>
</div>
        </div>
<jsp:include page="rodape.jsp"></jsp:include>

