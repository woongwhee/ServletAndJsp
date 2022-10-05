<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/04
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>스크립팅 원소</title>
</head>
<body>
      <!--HTML주석 : 개발자도구 탭에 노출됨.  -->
      <%--JSP주석 : 개발자도구 탭에 노출 안됨. --%>
      <h1>스크립팅 원소</h1>
      <%
        int sum=0;
        for (int i = 0; i <= 100; i++) {
          sum+=i;
        }
        System.out.println("덧셈끝.결과는:"+sum);
      %>
    <p>
        화면으로 출력하고자 한다면<br>
<%--        스트립트릿을 이용해서 출력가능: <% Out.println(sum);%><br>--%>
        표현식으로 출력가능<%=sum%>

    </p>

</body>
</html>