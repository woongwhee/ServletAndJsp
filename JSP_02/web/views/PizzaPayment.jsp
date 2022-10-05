<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/04
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #pizzaText{color: red;}
        #toppingText{color: green;}
        #sideText{color: blue;}
        #footMesege{
            color: pink;
        }
    </style>
</head>
<body>
    <h1>주문내역</h1>
    <p>
        피자는 <span id="pizzaText"><%=request.getAttribute("pizza")%></span>,
        토핑은<span id="toppingText"><%=request.getAttribute("topping")%></span>,
        사이드는 <span id="sideText"><%=request.getAttribute("side")%></span>주문하셨습니다.
    </p>
    <p><b>총합 :<u><%=request.getAttribute("price")%></u></b></p>
    <h2 id="footMesege">즐거운 식사시간되세요</h2>
</body>
</html>
