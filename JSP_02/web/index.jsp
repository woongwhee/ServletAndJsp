<%--
  Created by IntelliJ IDEA.
  User: jinunghwi
  Date: 2022/10/04
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
  <head>
    <title>JSP란?</title>
  </head>
  <body>

    <p>
      JSP페이지에서 자바코드를 기술할 수있게 해주는 기능
    </p>
    <ol>
      <li>선언문:&lt;%! %&gt;<br>
            멤버변수와 메소드를 선언하기위해 사용</li>

      <li>스크립트릿:&lt;% %&gt;
          jsp에서 자바코드를 기술하기 위한 제일 기본적인 표현법</li>

      <li>
          표현식(출력식): &lt;%= %&gt;<br>
        자바에서 작성한 값(또는 메소드호출의 결과값)을 출력하기 위해 사용.
      </li>
    </ol>
    <a href="views/01_ScriptingElement.jsp">view detail</a>

    <h3>2. 지시어(Directive) &lt;%@ page/include/taglib 속성="속성값"%&gt;</h3>
    <p>
      JSP page 전체에 영향을 미치는 정보를 기술할때 쓰임

    </p>
    <ol>
      <li>
        page 지시어 : 현재 의 jsp페이지를 처리하는데 필요한 각종 속성을 기술하는 부분<br>
        <ul>
          <li>language : 사용할 스크립트 언어 유형을 지정</li>
          <li>contentType: 웹 브라우저가 받아볼 해당 페이지의 형식 인코딩 방식 지정</li>
          <li>pageEncoding : jsp파일에 기록된 자바코드의 인코딩 방식지정</li>
          <li>import: 자바의 import와 같은의미</li>
          <li>errorPage: 해당 jsp상에서 오류가 발생했을 경우 보여줄 에러페이지 경로 지정.</li>
        </ul>
        <a href="views/02_DirectivePage.jsp">view detail &raquo;</a>
        <li>include 지시어 : jsp 파일에 또는 다른 jsp 를 포함시키고자 할때 사용하는 지시어<br>
      <a href="views/03_DirectiveInclude.jsp">view detail &raquo;</a>
      <li>
      taglib 지시어 : jsp기능ㅇ르 좀더 확장하수 있는 인자로 라이브러리를 확장함?
    </li>
    </li>
      <a href="views/PizzaOrderForm.jsp">피자스쿨</a>
      </li>
    </ol>



  </body>
</html>
