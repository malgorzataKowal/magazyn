<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" type="text/css" href="magazyn.css">
</head>
<body>

	<form:form modelAttribute="towar">
		Nazwa: <form:input path="nazwa" />
		<br>
		Opis: <form:input path="opis" />
		<br>
				Cena: <form:input path="cena" />
		<br>
				Ilosc: <form:input path="ilosc" />
		<br>
				Kategoria: <form:input path="kategoria" />
		<br>
                 
		<input type="submit" value="Dodaj" />

	</form:form>
            
                <table>
                    <td><input type="text" value="text"> </td>
                    <input type="submit" value="Filtruj Kategorie"/>
                </table>      
	<table>
		<tr>
			<td>Id</td>
                        <td><a href="magazyn?id=nazwa&action=sort">Nazwa</a></td>
			
			<td>Opis</td>
			<td><a href="magazyn?id=cena&action=sort">Cena</a></td>
                      
			<td>Ilosc</td>
			<td><a href="magazyn?id=kategoria&action=sort"/>Kategoria</a></td>
			
                        
		</tr>
		<c:forEach var="towar" items="${magazyn}">
			<tr>
			<td>
                       <c:out value="${towar.id+1}" />
				<td><c:out value="${towar.nazwa}" /></td>
				<td><c:out value="${towar.opis}" /></td>
				<td><c:out value="${towar.cena}" /></td>
				<td><c:out value="${towar.ilosc}" /></td>
				<td><c:out value="${towar.kategoria}" /></td>
				<td><a href="magazyn?id=${towar.id}&action=delete">Usu&#324;</a></td>
				<td><a href="magazynzmien?id=${towar.id}&action=update">Zmie&#324;</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>