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
			<a class="navbar-brand js-scroll-trigger" href="#page-top">DevOps</a>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#portfolio">Equipe</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#about">Sobre</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
						href="#contact">Contato</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Header -->
	<header class="masthead bg-primary  text-center">
		<div class="container">
			<img class="img-fluid mb-5 d-block mx-auto"
				src="static/img/teacher.png" alt="">
			<h1 class="text-uppercase text-white  mb-0">Sistema de Monitoria</h1>
			<br>

			<!--CARTÕES DE ESCOLHA-->
			<div class="card-group">

				<div class="card text-center" style="width: 18rem;">
					<div class="card-body">
						<img src="/static/img/coordenador.png" width="30" height="30"
							class="d-inline-block align-top" alt="">
						<h5 class="card-title">Coordenador</h5>
						<p class="card-text">Acesso apenas para coordenador</p>
						<a href="coordenador/login" class="btn btn-primary">Entrar</a>
					</div>
				</div>

				<div class="card text-center" style="width: 18rem;">
					<div class="card-body">
						<img src="/static/img/monitor.png" width="30" height="30"
							class="d-inline-block align-top" alt="">
						<h5 class="card-title">Monitor</h5>
						<p class="card-text">Acesso Apenas para Monitor</p>
						<a href="monitor/" class="btn btn-primary">Entrar</a>
					</div>
				</div>

				<div class="card text-center" style="width: 18rem;">
					<div class="card-body">
						<img src="/static/img/estudante.png" width="30" height="30"
							class="d-inline-block align-top" alt="">
						<h5 class="card-title">Aluno</h5>
						<p class="card-text">Acesso ao aluno</p>
						<a href="aluno/login" class="btn btn-primary">Entrar</a>
					</div>
				</div>
			</div>
	</header>

	<!-- Portfolio Grid Section -->
	<section class="portfolio" id="portfolio">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0">Equipe</h2>
			<hr class="star-dark mb-5">
			<div class="row">
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1">
						<div
							class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div
								class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="static/img/portfolio/Fernando.jpeg"
						alt="">
					</a>
				</div>
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-2">
						<div
							class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div
								class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="static/img/portfolio/Jonathan.jpeg"
						alt="">
					</a>
				</div>
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-3">
						<div
							class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div
								class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="static/img/portfolio/Eduardo.jpeg"
						alt="">
					</a>
				</div>
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-4">
						<div
							class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div
								class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="static/img/portfolio/CarlosM.jpg"
						alt="">
					</a>
				</div>
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-5">
						<div
							class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div
								class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/portfolio/safe.png" alt="">
					</a>
				</div>
				<div class="col-md-6 col-lg-4">
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-6">
						<div
							class="portfolio-item-caption d-flex position-absolute h-100 w-100">
							<div
								class="portfolio-item-caption-content my-auto w-100 text-center text-white">
								<i class="fas fa-search-plus fa-3x"></i>
							</div>
						</div> <img class="img-fluid" src="img/portfolio/submarine.png" alt="">
					</a>
				</div>
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
							href="#"> <i class="fab fa-fw fa-facebook-f"></i>
						</a></li>
						<li class="list-inline-item"><a
							class="btn btn-outline-light btn-social text-center rounded-circle"
							href="#"> <i class="fab fa-fw fa-google-plus-g"></i>
						</a></li>
						<li class="list-inline-item"><a
							class="btn btn-outline-light btn-social text-center rounded-circle"
							href="#"> <i class="fab fa-fw fa-twitter"></i>
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

	<!-- Portfolio Modals -->

	<!-- Portfolio Modal 1 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Fernando
							Gurgel</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/cabin.png" alt="">
						<p class="mb-5">Desenvolvedor Back-End e Scrum Master da
							equipe</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Fechar
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 2 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-2">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Jonathan
							Feitosa</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/cake.png" alt="">
						<p class="mb-5">Desenvolvedor Back-End</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Fechar
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 3 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-3">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Eduardo</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/circus.png" alt="">
						<p class="mb-5">Tester</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Fechar
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 4 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-4">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Carlos Maciel</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/game.png" alt="">
						<p class="mb-5">Desenvolvedor Front-End</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Fechar
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 5 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-5">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/safe.png" alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 6 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-6">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/submarine.png"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>













	</div>
