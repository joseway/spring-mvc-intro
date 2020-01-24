<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet" />
		<title>Insert title here</title>
	</head>
	<body>
		<header>
			<nav>
				<a href="<c:url value="/" />">Accueil</a>
				<a href="<c:url value="/produit" />">Produit</a>
			</nav>
		</header>
		<h3>Welcome Page</h3>
		<div class="container">
			<c:url value="/" var="clientUrl" />
			<form:form action="${clientUrl}" method="post" modelAttribute="client">
				<div class="form-group">
					<label for="nom">Nom:</label>
					<form:input path="nom" type="text" id="nom" name="nom" />
				</div>
				<div class="form-group">
					<label for="email">Email:</label>
					<form:input path="email" type="text" id="email" name="email" />
				</div>
				<div class="form-group">
					<label for="age">Age:</label>
					<form:input path="age" type="number" id="age" name="age" />
				</div>
				<button type="submit">Enregistrer</button>
			</form:form>
		</div>
	</body>
</html>