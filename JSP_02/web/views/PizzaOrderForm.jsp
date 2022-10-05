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
    <title>피자아카데미</title>
    <style>
      #menu{
        border: 1px black solid;
        height: 400px;
        width: 600px;
      }
      table{
        float: left;
        height: 400px;
        width: 50%;
        border:1px solid black
      }
      table td{
        border: 1px solid black;
        box-sizing: border-box;
        margin: 0%;
      }

    </style>
</head>
<body>
<%@include file="datePrint.jsp"%>

<h2> 피자 아카데미</h2>
<div id="menu">
<table >
  <thead>
  <tr>
    <td class="kind">종류</td>
    <td class="name">이름</td>
    <td class="price">가격</td>
  </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="5">피자</td>
      <td>치즈피자</td>
      <td>5000</td>
    </tr>
    <tr>
      <td>콤비네이션피자</td>
      <td>6000</td>
    </tr>
    <tr>
      <td>포테이토피자</td>
      <td>7000</td>
    </tr>
    <tr>
      <td>고구마피자</td>
      <td>7000</td>
    </tr>
    <tr>
      <td>불고기피자</td>
      <td>8000</td>
    </tr>
    <tr>
      <td rowspan="6">토핑</td>
      <td>고구마무스</td>
      <td>1000</td>
    </tr>
    <tr>
      <td>콘크림무스</td>
      <td>1500</td>
    </tr>
    <tr>
      <td>파인애플토핑</td>
      <td>2000</td>
    </tr>
    <tr>
      <td>치즈토핑</td>
      <td>2000</td>
    </tr>
    <tr>
      <td>치즈크러스트</td>
      <td>2000</td>
    </tr>
    <tr>
      <td>치즈바이트</td>
      <td>3000</td>
    </tr>
  </tbody>
  </table>
  <table >
    <thead>
    <tr>
      <td class="kind">종류</td>
      <td class="name">이름</td>
      <td class="price">가격</td>
    </tr>
    </thead>
    <tbody>
      <tr>
        <td rowspan="12">사이드</td>
        <td>오븐구이통닭</td>
        <td>9000</td>
      </tr>
      <tr>
        <td>치킨스틱&윙</td>
        <td>4900</td>
      </tr>
      <tr>
        <td>치즈오븐스파게티</td>
        <td>4000</td>
      </tr>
      <tr>
        <td>새우링&웨지감자</td>
        <td>3500</td>
      </tr>
      <tr>
        <td>갈릭포테이토</td>
        <td>3000</td>
      </tr>
      <tr>
        <td>콜라</td>
        <td>1500</td>
      </tr>
      <tr>
        <td>사이다</td>
        <td>1500</td>
      </tr>
      <tr>
        <td>갈릭소스</td>
        <td>500</td>
      </tr>
      <tr>
        <td>피클</td>
        <td>300</td>
      </tr>
      <tr>
        <td>핫소스</td>
        <td>100</td>
      </tr>
      <tr>
        <td>파마산 치즈가루</td>
        <td>100</td>
      </tr>
    </tbody>
</table>
</div>

<div id="select">
<form action="/JSP02/PizzaServlet" method="post">
  피자 : 
<select name="pizza" >
  <option value="1">치즈피자</option>
  <option value="2">콤비네이션피자</option>
  <option value="3">포테이토피자</option>
  <option value="4">고구마피자</option>
  <option value="5">불고기피자</option>
</select><br>
토핑 : 
<input type="checkbox" name="topping" value="1">고구마무스
<input type="checkbox" name="topping" value="2">콘크림무스
<input type="checkbox" name="topping" value="3">파인애플토핑
<input type="checkbox" name="topping" value="4">치즈토핑
<input type="checkbox" name="topping" value="5">치즈크러스트
<input type="checkbox" name="topping" value="6"><br>
사이드 : <input type="checkbox" name="side" id="" value="오븐구이통닭">오븐구이통닭
<input type="checkbox" name="side" value="1">치킨스틱&윙
<input type="checkbox" name="side" value="2">치즈오븐스파게티
<input type="checkbox" name="side" value="3">새우링&웨지감자
<input type="checkbox" name="side" value="4">갈릭포테이토
<input type="checkbox" name="side" value="5">콜라
<input type="checkbox" name="side" value="6">사이다
<input type="checkbox" name="side" value="7">갈릭소스
<input type="checkbox" name="side" value="8">피클
<input type="checkbox" name="side" value="9">핫소스
<input type="checkbox" name="side" value="10">파마산치즈가루
  <input type="submit" value="제출">
</form>
</div>

</body>
</html>
