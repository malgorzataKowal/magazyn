<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Magazyn</title>

        <link href="${pageContext.request.contextPath}/resources/css/magazyn.css" rel="stylesheet" >

        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/magazyn.js" ></script>
    </head>
    <body>
        <div class="container"> 
            <div id="header">

                <div id="link_Magazyn"><a href="<c:url value="/magazyn" />" ><p>Przejdz do Magazynu</p></a></div>

            </div>

            <div id="welcome">
                <div id="magazyn_napis" ><p> Witaj w magazynie ksiazek<br/>Wybierz ksiazke<br/> dla siebie</p></div>
            </div>

        </div>


    </body>
</html>
