<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var="path" value="${pageContext.request.contextPath}" />
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<form action="${path}/movies/save" method="post">
		<input type="text" placeholder="Nome da ONG" name="movie.title" />
		<input type="number" placeholder="Nº de Registro na Prefeitura" name="movie.price" />
                <br><br><button type="submit">Cadastrar</button>
	</form>
</body>
</html>