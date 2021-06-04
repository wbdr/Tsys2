<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/31
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>tsys/studentScore</title>
</head>
<body>
<table>
    <tr>
        <td>课程名称</td>
        <td>课程学分</td>
        <td>是否重修</td>
        <td>得分</td>
    </tr>
    <c:forEach items="${gradeList}" var="grade" >
        <tr>
            <td>${grade.cname}</td>
            <td>${grade.credit}</td>
            <td><c:choose>
                <c:when test="${grade.is_restart=='1'}">是</c:when>
                <c:otherwise>否</c:otherwise></c:choose>
            </td>
            <td>${grade.grade}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
