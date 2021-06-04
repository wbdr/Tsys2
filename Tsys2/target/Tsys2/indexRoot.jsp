<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/31
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>tsys/root</title>
</head>
<body background="resources.img.png">

<a align=center href="rootGetSci.jsp?name=${user.name}">课表生成</a>
<br>
<a align=center href="rootInsert.jsp?name=${user.name}">添加信息</a>
<br>
<a align=center href="rootUpdate.jsp?name=${user.name}">修改信息</a>
<br>
<a align=center href="rootDelete.jsp?name=${user.name}">删除信息</a>
<br>
<a align=center href="rootSC.jsp?name=${user.name}">发布教评</a>
</body>
</html>
