<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Magazyn</title>
         <!--<link rel="stylesheet" type="text/css" href="magazyn.css">-->
   <link href="${pageContext.request.contextPath}/resources/css/magazyn.css" rel="stylesheet" >
       
</head>
<body>
<div class="container"> 
    <div id="header">
        
         <div id="link_Magazyn"><a href="<c:url value="/magazyn" />" ><p>Przejdz do Magazynu</p></a></div>
         
     </div>
    
<div id="welcome">
    <div id="magazyn_napis" > Witaj w magazynie ksiazek<br/>Wybierz ksiazke<br/> dla siebie</div>
</div>

</div>
   

</body>
</html>
