<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Magazyn</title>
         <!--<link rel="stylesheet" type="text/css" href="magazyn.css">-->
   <link href="${pageContext.request.contextPath}/resources/css/magazyn.css" rel="stylesheet" >
       
</head>
<body>
<div id="welcome">
    
      <div class="box"></div>
	<div id="napis">Witamy w magazynie</div> 
        
      
      
</div>

<P>  The time on the server is ${serverTime}. </P>

    <div id="header"><a href="<c:url value="/magazyn" />" >Dodaj Towar</a></div>

</body>
</html>
