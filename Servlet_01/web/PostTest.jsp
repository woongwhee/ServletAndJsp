<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/04
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/Servlet01/PostTest" method="post">
    제목 : <input type="text" name="title" ><br>
    글내용 :<textarea name="content"></textarea><br>
    빈상자 : <div name="void" value="<br>빈상자">빈상자</div>
<%--    제목 : 진웅휘입니다. 내용 : 그렇지요 빈상자 : null div값은 이렇게 제출할때 전해지지 않나보다--%>
    <input type="submit">
</form>
</body>
</html>
