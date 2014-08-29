<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <link href="${pageContext.request.contextPath}/resources/css/magazyn.css" rel="stylesheet" >
       
    </head>
    <body>

        <form:form modelAttribute="towar">
            Nazwa: <form:input path="nazwa" />
           <form:errors path="nazwa" cssClass="error" />
            <br>
            Opis: <form:input path="opis" />
           <form:errors path="opis" cssClass="error" /> 
            <br>
            Cena: <form:input path="cena" />
           <form:errors path="cena" cssClass="error" />
            <br>
            Ilosc: <form:input path="ilosc" />
            <form:errors path="ilosc" cssClass="error" />
            <br>
            Kategoria: <form:input path="kategoria" />
             <form:errors path="kategoria" cssClass="error" />
            <br>

            <input type="submit" value="Dodaj" />

        </form:form>

        <form action="magazyn" method="get">
            <table>
                <input type="radio" name="filtr" value="kategoria">kategoria<br>
                <input type="radio" name="filtr" value="nazwa">nazwa<br>
                <input type="radio" name="filtr" value="cena">cena<br>
                <td><input type="text" name="text"/> </td>
                <input type="submit" value="filtuj" />

            </table>  
        </form> 
        <table>
            <tr>
                <td>Id</td>
                <td><a href="magazyn?sortBy=nazwa&action=sort">Nazwa</a></td>

                <td>Opis</td>
                <td><a href="magazyn?sortBy=cena&action=sort">Cena</a></td>

                <td>Ilosc</td>
                <td><a href="magazyn?sortBy=kategoria&action=sort"/>Kategoria</a></td>


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