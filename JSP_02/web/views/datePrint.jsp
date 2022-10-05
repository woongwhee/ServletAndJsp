<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/04
  Time: 8:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Date, java.text.SimpleDateFormat" %>

<html>
<head>
    <style>
        h1{
            color: pink;
        }
    /*    include되는 파일의 css속성이 원본에도 영향을 끼칠수있다.*/
    </style>
</head>
<body>
    <%
      Date date=new Date();
      SimpleDateFormat sdf=new SimpleDateFormat("YYYY년 MM월 dd일 E");
      String today=sdf.format(date);
    %>
    <h4>오늘은 <%=today%>입니다.</h4>
</body>
</html>
