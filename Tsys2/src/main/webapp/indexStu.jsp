<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/31
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>tsys/student</title>
</head>
<body>
欢迎${sname}来到教务系统
<br>
<br>
<a align=center href="stuData.do?sname=${sname}">个人信息查询</a>
<br>
<a align=center href="stuScore.do?sno=${sno}">个人成绩查询</a>
<br>
<a align=center href="stuexamChoose.do?sno=${sno}&sname=${sname}">在线考试</a>
<br>
<a align=center href="stuSc.do?sno=${sno}">课表查看</a>
<br>
<a align=center href="autoSch.do">自动排课</a>
<br>
</body>
</html>
