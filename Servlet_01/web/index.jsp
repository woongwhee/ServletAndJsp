<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/03
  Time: 7:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>서블릿 1번</title>
  </head>
  <body>

  <ol>
    <li><a href="/Servlet01/Print">기본적인 출력</a></li>
    <li><a href="/Servlet/PrintTest2">한글및 html헤더설정</a></li>
<%--    <li><a href="/PrintTest2">한글및 html헤더설정</a></li> 어노테이션으로 지정한 서블릿의경우 컨텍트경로를 명시해 줘야된다.--%>
    <li><a href="views/GetTest.jsp">Get해보기</a></li>
    <li><a href="views/PostTest.jsp">Post해보기</a></li>
    <li><a href="views/Calcul.jsp">학습과제</a></li>
    <li><a href="htmlTest.html">html왜안되지?</a></li>

  </ol>

  </body>
</html>
