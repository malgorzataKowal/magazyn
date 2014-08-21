<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Magazyn</title>
         <!--<link rel="stylesheet" type="text/css" href="magazyn.css">-->
       <style>
           body{
               padding:0px;
               margin:0px;
               background-color: #E2D9D0;
           }
            h1{
                color:blue;
            }
            #welcome{
                height:250px;
                width:100%;
                border: 1px solid black;
                font-size:24px;
                background-color: #84B9E8;
              
            }
            #header{
                height:25px;
                width:150px;
                margin-top: 25px;
                border-bottom: 1px solid black;
                
            }
            #header a{
                text-decoration: none;
            }
            .box{
                width:100px;
                height:100px;
                float:left;
                margin-left:100px;
                margin-top: 50px;
                background-color: #F7F8FA;
               // border:1px solid black; 
                -webkit-box-shadow: -70px -28px 0px 0px rgba(92, 103, 106, 1);
                -moz-box-shadow:    -70px -28px 0px 0px rgba(92, 103, 106, 1);
                box-shadow:         -70px -28px 0px 0px rgba(92, 103, 106, 1);
                  
            }
            #napis{
                margin-top:170px;
                width:300px;
                height:80px;
                margin-left: 20px;
               
            }
        </style>
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
