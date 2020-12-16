<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var="path" value="${pageContext.request.contextPath}" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Login</title>

</head>
<body>
	<div class="container">
            <h1>Projeto - Ongs (Organização Não Governamental)</h1><br>
            <h3><em>Login</em></h3>
		<form action="auth" method="POST">
			<input type="text" placeholder="Usuário" name="customer.name" />
			<input type="password" placeholder="Senha" name="customer.password" />
                        <button type="submit">Entrar</button><br>
		</form>
            <br><a href="${path}/customers/new"><em>Não está cadastrado?</em></a>
	</div>
</body>
</html>
