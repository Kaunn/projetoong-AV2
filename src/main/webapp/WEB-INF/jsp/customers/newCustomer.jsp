<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<c:set var="path" value="${pageContext.request.contextPath}" />
<head>
<link rel="stylesheet" href="${path}/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro</title>
</head>
<body>	
    <%@include file="../templates/nav.jsp"%>
	${error}
	<main>
	<div class="container">
            <h3><em>Cadastro</em></h3>
		<form action="${path}/customers/save" method="post">
			<input type="text" name="customer.name" placeholder="Usuário"
				value="${customer.name}" /> <input type="number" name="customer.cpf"
				placeholder="CPF" value="${customer.cpf}" /> <input type="number"
				name="customer.birth" placeholder="Data de Nascimeto"
				value="${customer.birth}" /> <input type="password"
				name="customer.password" placeholder="Senha"
                                value="${customer.password}" /><br>
                        <br><button type="submit">Cadastrar</button>
		</form>
	</div>
	</main>
	<%@include file="../templates/footer.jsp"%>
</body>
<script src="${path}/js/js.js"></script>
</html>
