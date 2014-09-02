<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${pageContext.request.contextPath}/resources/css/zmien.css" rel="stylesheet" >
<title>Insert title here</title>
</head>
<body>
<div id="container">    
<table id="form">
	<form:form modelAttribute="towar">
            <tr>
		<td>Nazwa: <form:input path="nazwa" /></td>
		
            </tr>  
            <tr>
		<td>Opis: <form:input path="opis" /></td>
		
            </tr>  
            <tr>
				<td>Cena: <form:input path="cena" /></td>
	     </tr>
             <tr>
				<td>Ilosc: <form:input path="ilosc" /></td>
	     </tr>
		<tr>		
                    <td>Kategoria: <form:input path="kategoria" /></td>
                </tr>    
		<br>
		<td><input type="submit" value="Dodaj" /></td>
		<form:hidden path="id"/>
	</form:form>
             
</table> 
     </div>  
</body>
</html>