<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="menu.jsp"></jsp:include>
<br />


<body id="page-top">

	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase"
		id="mainNav">
		<div class="container">
			<a id="tituloIndex" class="navbar-brand js-scroll-trigger" href="#page-top">DevOps - Controle de Monitorias</a>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
				
				<li class="nav-item dropdown mx-0 mx-lg-1"><a
						class="nav-link dropdown-toggle py-3 px-0 px-lg-3 rounded js-scroll-trigger" data-toggle="dropdown"
						href="">Entrar</a>
						
						 <div class="dropdown-menu">
      <a class="dropdown-item" href="coordenador/login">Coordenador</a>
      <a class="dropdown-item" href="monitor/login">Monitor</a>
      <a class="dropdown-item" href="aluno/login">Aluno</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="contato/">Entrar em Contato</a>
    </div>
						</li>
				
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#portfolio">Time</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#about">Sobre</a></li>
						<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="fac/">FAQ</a>
						</li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="contato/">Contato</a>
						</li>
						
				</ul>
			</div>
		</div>
	</nav>
	
	

	<!-- Header -->
	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="static/img/ifam.jpeg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="static/img/aula2.jpeg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="static/img/devops.jpg" alt="Third slide">
    </div>
  </div>
</div>
			



	<!-- Portfolio Grid Section -->
	<section class="portfolio" id="portfolio">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0">Time DevOps</h2>
			<hr class="star-dark mb-5">
			<div class="row">
				 <div class="row">
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="static/img/portfolio/Fernando.jpeg" alt="card image"></p>
                                    <h4 class="card-title">Fernando Gurgel</h4>
                                    <p class="card-text">Scrum Master</p>
                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Fernando Gurgel</h4>
                                    <p class="card-text">Aluno do Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas do Instituto Federal de Educação, Ciência e Tecnologia do Amazonas (IFAM) e estagiário de desenvolvimento mobile no Tribunal de Justiça do Amazonas (TJ-AM).</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class="img-fluid" src="static/img/portfolio/CarlosM.jpg" alt="card image"></p>
                                    <h4 class="card-title">Carlos Maciel</h4>
                                    <p class="card-text">Web Designer e Desenvolvedor Front-End.</p>
                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Carlos Maciel</h4>
                                    <p class="card-text">Aluno do Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas do Instituto Federal de Educação, Ciência e Tecnlogia do Amazonas (IFAM).</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="static/img/portfolio/Jon.jpg" alt="card image"></p>
                                    <h4 class="card-title">Jonathan Feitosa</h4>
                                    <p class="card-text">Desenvolvedor Back-End.</p>
                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Jonathan Feitosa</h4>
                                    <p class="card-text">Aluno do Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas do Instituto Federal de Educação, Ciência e Tecnologia do Amazonas (IFAM) e estagiário do Tribunal Regional do Trabalho da 11º Região AM/RR (TRT-11)</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
          
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                    <div class="mainflip">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="static/img/portfolio/Eduardo.jpeg" alt="card image"></p>
                                    <h4 class="card-title">Eduardo Matheus</h4>
                                    <p class="card-text">Tester</p>
                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title">Eduardo Matheus</h4>
                                    <p class="card-text">Aluno do Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas do Instituto Federal de Educação, Ciência e Tecnlogia do Amazonas (IFAM)</p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-skype"></i>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fa fa-google"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./Team member -->
				
				
			</div>
		</div>
	</section>

	<!-- About Section -->
	<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2 class="text-center text-uppercase text-white">Sobre o
				Projeto</h2>
			<hr class="star-light mb-5">
			<div class="row">
				<div class="col-lg-4 ml-auto">
					<p class="lead">Esse projeto foi desenvolvido com o objetivo de
						facilitar o gerenciamento da coordenação sobre os trabalhos
						voluntario dos monitores. A coordenação vai decidir as disciplinas
						que precisam de monitores e quantidade necessária de voluntários
						que devem trabalhar no máximo 12 horas semanais e no período
						máximo de 12 meses.</p>
				</div>
				<div class="col-lg-4 mr-auto">
					<p class="lead">Os alunos para se tornarem monitores devem
						estar devidamente matriculados e ter cursando as disciplinas do
						primeiro período, e não possuir reprovações na matéria que deseja
						se candidatar, Uma vez os alunos aprovados na seleção de
						monitoria, caberá a eles a disponibilizar os locais e as horas e
						os dias de atendimento da monitoria que no mínimo devem cumprir 6
						horas semanais.</p>
				</div>

				<div class="col-lg-4 mr-auto">
					<p class="lead">Aos alunos interessados em possuir os auxílios
						dos monitores, devem se inscrever nos horários disponibilizados no
						sistema pelos monitores, sendo que o máximo de vagas abertas para
						cada monitoria são doze. O sistema se solicitado exibira consulta
						como monitores de determinada disciplina, horários e disciplinas
						mais procuradas e entre outros.</p>
				</div>

			</div>
			<div class="text-center mt-4">
				<a class="btn btn-xl btn-outline-light" href="#"> Entre Agora </a>
			</div>
		</div>
	</section>
	
	


	<!-- Footer -->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Localização</h4>
					<p class="lead mb-0">
						Av. Sete de Setembro, 1975 <br>Centro, Manaus - AM, 69020-120
					</p>
				</div>
				<div class="col-md-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Encontre nos nas Redes Sociais</h4>
					<ul class="list-inline mb-0">
						<li class="list-inline-item"><a
							class="btn btn-outline-light btn-social text-center rounded-circle"
							href="https://www.facebook.com/DevOps-708907239467286"> <i class="fab fa-fw fa-facebook-f"></i>
						</a></li>
					
						<li class="list-inline-item"><a
							class="btn btn-outline-light btn-social text-center rounded-circle"
							href="https://twitter.com/DevOps05141152"> <i class="fab fa-fw fa-twitter"></i>
						</a></li>

					</ul>
				</div>
				<div class="col-md-4">
					<h4 class="text-uppercase mb-4">Monitoria Web</h4>
					<p class="lead mb-0">Gerencie monitorias em sua instituição.
				</div>
			</div>
		</div>
	</footer>

	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; DevOps 2018</small>
		</div>
	</div>

	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	<div class="scroll-to-top d-lg-none position-fixed ">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"> <i class="fa fa-chevron-up"></i>
		</a>
	</div>

	



	


<jsp:include page="rodape.jsp"></jsp:include>










	
