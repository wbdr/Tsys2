<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/23
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>排课第一步-选择班级和第几阶段</title>
</head>
<body>
排课第一步-选择班级和第几阶段
<br>
                <c:forEach items="${myClassList}" var="myClass">
                    <a href="autoSchNext.do?classname=${myClass.name}&phase=${myClass.phase}">${myClass.name}::${myClass.phase}阶段</a>
                    <br>
                </c:forEach>

</body>
</html>
