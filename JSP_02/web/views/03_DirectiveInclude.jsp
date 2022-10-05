<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/04
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <title>include지시어</title>
</head>
<body>
    <h1>include 지시어</h1>
    <h2>01_ScriptingElement.jsp파일을 include 해보겠ㅅ브니다.</h2>
    <%@ include file="01_ScriptingElement.jsp" %>
    <%=sum%>
    <h2>오늘날짜</h2>
    <%@include file="datePrint.jsp"%>
</body>
</html>
