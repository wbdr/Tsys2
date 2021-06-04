<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/6/3
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>tsys/autoSchResult</title>
</head>
<body>
<c:choose>
    <c:when test="${isSuccessed=='1'}">
        <table align="center" border="1">
            <caption>课程表</caption>
            <thead>
            <tr>
                <th></th>
            </tr>

            </thead>
            <tbody>
            <tr>
                <td>12节</td>
                <td>34节</td>
                <td>56节</td>
                <td>78节</td>
            </tr>
            <tr>
                <c:forEach items="${cnames}" var="cname" begin="0" end="3">
                    <td>${cname}</td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${cnames}" var="cname" begin="4" end="7">
                    <td>${cname}</td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${cnames}" var="cname" begin="8" end="11">
                    <td>${cname}</td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${cnames}" var="cname" begin="12" end="15">
                    <td>${cname}</td>
                </c:forEach>
            </tr>
            <tr>
                <c:forEach items="${cnames}" var="cname" begin="16" end="19">
                    <td>${cname}</td>
                </c:forEach>
            </tr>
            </tbody>
        </table>
    </c:when>
    <c:otherwise>自动排课失败，请手动完成</c:otherwise>
</c:choose>
</body>
</html>
