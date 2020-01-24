<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Nouveau Produit</h3>
	<div>
		<c:url value="/produit" var="prodUrl" />
		<form:form modelAttribute="produit" action="${prodUrl}" method="post">
			<div>
				<label for="nom">Nom</label>
				<form:input path="nom" id="nom" />
			</div>
			<div>
				<label for="prix">Prix</label>
				<form:input path="prix" id="prix" />
			</div>
			<div>
				<label for="">Description</label>
				<form:textarea path="description" id="description"/>
			</div>
			<button type="submit">Enregister</button>
		</form:form>
	</div>
</body>
</html>