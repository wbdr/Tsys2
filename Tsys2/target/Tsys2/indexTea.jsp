<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/31
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>tsys/indexteacher</title>
</head>
<body>
<a align=center href="teaData.jsp?name=${user.name}">个人信息查询</a>
<br>
<a align=center href="teaTest.jsp?name=${user.name}">发布考试</a>
<br>
<a align=center href="teaInSco.jsp?name=${user.name}">成绩录入</a>
<br>
<a align=center href="teaSc.jsp?name=${user.name}">课表查看</a>
<br>
</body>
</html>
