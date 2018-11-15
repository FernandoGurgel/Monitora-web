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
	href="<c:url value="/static/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/jquery-ui.css" />" />
<script src="/static/js/jquery.js"></script>
<script src="/static/js/jquery-ui.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/list.js/1.5.0/list.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/estilo.css" />" />
<script src="/static/js/bootstrap.js"></script>
<script src="/static/js/fontawesome-all.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/">DevOps</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">

			</ul>
		</div>

		<a href="/">
			<button type="button" class="btn btn-outline-danger">sair</button>
		</a>
	</nav>