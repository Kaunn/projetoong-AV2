<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<c:set var="path" value="${pageContext.request.contextPath}" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Organizações</title>
</head>
<body>
	<div class="container">
		<header>
			<h1>Projeto - Ongs (Organização Não Governamental)</h1>
			<a class="btn success" href="${path}/movies/new">Cadastre uma nova ONG</a>
		</header>

		<div>
			<table>
				<thead>
					<tr>
                                                <th>Nome  |</th>
						<th>N de Registro na Prefeitura |</th>
                                                <th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="movie" items="${movieList}">
                                            <tr>
							<td><center>${movie.title}</td>
							<td><center>${movie.price}</td>
                                                        <td class="actions"><center><a href="${path}/movies/id/${movie.id}"
								class="btn warning">Editar</a>
								<form action="${path}/movies/delete" method="post">
								<input type="hidden" name="movie.id" value="${movie.id}" />
                                                                <button class="btn error">Excluir</button>
								</form></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
