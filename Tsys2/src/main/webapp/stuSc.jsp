<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/31
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>课程名称</td>
        <td>任课老师</td>
        <td>上课时间</td>
        <td>上课地点</td>
    </tr>
    <c:forEach items="${scList}" var="sc" >
        <tr>
            <td>${sc.cname}</td>
            <td>${sc.tname}</td>
            <td>${sc.time}</td>
            <td>${sc.place}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
