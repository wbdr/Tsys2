<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/6/3
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<html>
<head>
    <title>tsys/studentExamChoose</title>
</head>
<body>
请选择你要进行的考试课程：
<br>
<c:forEach items="${courses}" var="course">
    <a align=center href="stuexam.do?cno=${course.cno}&sno=${sno}&sname=${sname}">${course.cname}</a>
    <br>
</c:forEach>

</body>
</html>
