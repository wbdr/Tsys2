<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/23
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>排课第二步-为这个班级选择老师和课程</title>
</head>
<body>
<br>
在一个班里老师和课程是一对一的关系
<table width="596" height="210" class="tableborder">
    <tr>
        <!--------------------- 选择课程和班级 --------------------->
        <td width="156">
            <table width="147" class="tableborder">
                <caption>班级:${classname} 阶段:${phase}</caption>
                <tr>
                    <td>必修课程:</td>
                </tr>
                <tr>


                    <!--------------------- 显示老师,课程,班级 --------------------->
                    <td width="396" valign="top">
                        <table width="397" height="55" class="tableborder">
                            <tr>
                                <td height="32">编号</td>
                                <td>老师</td>
                                <td>课程</td>
                                <td>班级</td>
                                <td>删除</td>
                            </tr>
                            <c:forEach items="${tcourseList}" var="tcl">
                                <tr>
                                    <td>${tcl.tcid}</td>
                                    <td>${tcl.tname}</td>
                                    <td>${tcl.cname}</td>
                                    <td>${tcl.classname}</td>
                                    <td><a href="/autoSchNext/delete?tcid=${tcl.tcid}">删除</a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </td>
                <tr>
            </table>
        </td>
    </tr>
</table>
<a href="autoSchResult.do?classname=${classname}&phase=${phase}" ><p>开始自动排课</p></a>

</body>
</html>
