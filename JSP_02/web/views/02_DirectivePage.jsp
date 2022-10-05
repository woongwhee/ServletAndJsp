<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/04
  Time: 7:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList , java.util.Date" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>page 지시어</title>
</head>
<body>
    <h1>page 지시어</h1>
    <%
        /* ArrayListt사용가능
        * */
        ArrayList<String> list=new ArrayList<>();
        list.add("Servlet");
        list.add("JSP");
        Date today=new Date();
    %>
    <p>
        리스트의 길이 :<%=list.size()%> <br>
        0번 인덱스의 값 :<%=list.get(0)%> <br>
        1번 인덱스의 값 : <%=list.get(1)%><br>
        현재 날짜 및 시간 : <%=today.toString()%><br>
    </p>
</body>
</html>
