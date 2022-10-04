<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        div{
            border:1px black solid;
            width: 300px;
        }
    </style>
</head>
<body>

<form action="/Servlet01/GetCount" method="get">
    <div>
        <div>입력할 횟수를 입력하세요.</div>
        <input type="number" name="cnt"><input type="submit">

    </div>

</form>
    

</body>
</html>