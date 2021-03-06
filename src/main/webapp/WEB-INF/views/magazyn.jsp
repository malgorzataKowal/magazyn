<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <link href="${pageContext.request.contextPath}/resources/css/formularz.css" rel="stylesheet" >
        
    </head>
    <body>
        <div class="container">
            <table id="form">

                <form:form modelAttribute="towar">
                    <tr>
                        <th>Tytul: <form:input path="nazwa" /></th>
                        <th><form:errors path="nazwa" cssClass="error" /></th>
                    
                    </tr> 
                    <tr>    
                        <th> Opis: <form:input path="opis" /></th>
                        <th><form:errors path="opis" cssClass="error" /></th>
                   
                    </tr>  
                    <tr>    
                        <th>Cena: <form:input path="cena" /></th>
                        <th><form:errors path="cena" cssClass="error" /></th>
                    
                    </tr> 
                    <tr>    
                        <th>Ilosc: <form:input path="ilosc" /></th>
                        <th><form:errors path="ilosc" cssClass="error" /></th>
                 
                    </tr> 
                    <tr>    
                        <th>Kategoria: <form:input path="kategoria" /></th>
                        <th><form:errors path="kategoria" cssClass="error" /></th>
                 
                    </tr>
                    <tr>
                        <th><input type="submit" value="Dodaj" /></th>
                    </tr>
                </form:form>
            </table>
            <div id="filtr">
                <form action="magazyn" method="get">

                    <div class="radio"><input type="radio" name="filtr" value="kategoria" checked="true" />kategoria</br></div>
                    <div class="radio"><input type="radio" name="filtr" value="nazwa"/>nazwa</br></div>
                    <div class="radio"><input type="radio" name="filtr" value="cena"/>cena</br></div>
                    <div id="filtr_input"><input type="text" name="text"/>
                    <input type="submit" value="filtruj"></div>


                </form> 
            </div>    
            <table id="results">
                <tr>
                    <td>id</td>
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
        </div>
    </body>
</html>