<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
<title>Controle de Monitoria</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/estilo.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/jquery-ui.css" />" />
<script src="/static/js/jquery.js"></script>
<script src="/static/js/jquery-ui.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/monitor/">DevOps</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="/monitor/">Inicio <span class="sr-only">(current)</span></a>
				</li>
			</ul>
		</div>
		<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
			<li class="nav-item dropdown "><a
				class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
				id="navbarDropdownMenuLink" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Menu </a>
				<div class="dropdown-menu dropdown-menu-right "
					aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="/monitor/">Meus Horário</a> 
				</div></li>
		</ul>
		<a href="/">
			<button type="button" class="btn btn-outline-danger">sair</button>
		</a>
	</nav>
