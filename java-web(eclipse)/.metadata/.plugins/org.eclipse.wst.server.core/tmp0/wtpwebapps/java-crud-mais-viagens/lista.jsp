<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.css">
<title>+Viagens - Todos os feedbacks</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="destino.html">Destino <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="promocao.html">Promo??es <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="feedback.html">Feedbacks <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <form action="CreateAndFind" method="GET" class="form-inline my-2 my-lg-0">
      <span class="mr-4">Procurar por feedback:</span>
      <input name="pesquisa" class="form-control mr-sm-2" type="search" placeholder="Dig?te a data ou palavras chave" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>

<main class="container text-center mt-3">
	<div class="row">
		<div class="col-12">
			<h1 class="display-4 my-3">Todos os Feedbacks</h1>
			<table class="table">
				<thead>
					<tr>
						<th>Id</th>
						<th>Data</th>
						<th>Descri??o</th>
						<th>A??es</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${feedbacks}" var="feedback">
						<tr>
							<td>${feedback.id_feedback}</td> 
							<td>${feedback.data}</td> 
							<td>${feedback.descricao}</td>
							<td>
								<a href="FeedbackApagar?feedbackId=${feedback.id_feedback}">excluir</a> |
								<a href="FeedbackUpdate?feedbackId=${feedback.id_feedback}">atualizar</a>
							<td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</main>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.js"></script>

</body>
</html>