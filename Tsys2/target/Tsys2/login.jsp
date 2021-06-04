<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" %>
<html>
<head>
    <%int i=0;%>
    <title>tsystem/login</title>
    <script type="text/javascript">

        function checkName() {
            let flag = true;
            let ele = document.getElementById("userName");
            if(ele.nodeValue.length>10) {
                alert("Name's length should be no more than 10!");
                flag = false;
            }
            if(flag) document.getElementById("namespan").innerHTML=
                "<font style='color:green;font-size:15px' <b>输入格式正确</b> </font>"
            else document.getElementById("namespan").innerHTML=
                "<font style='color:red;font-size:15px' <b>输入格式错误</b> </font>"

            return flag;
        }
    </script>
    <script>
        function t1(){
            var myselect=document.getElementByName("userType");
            var index=myselect.selectedIndex;

           i=myselect.options[index].value
        }

    </script>
</head>
<body style="text-align: center;background-color: white">
<TABLE cellSpacing=0 cellPadding=0 width=778 align=center border=0>
    <tbody>
    <TBODY>
    <TR>
        <TD vAlign=top background-color="#fff" height=400>
            <FORM name=form action=login method=post>
                <TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
                    <TBODY>
                    <TR>
                        <TD align=center
                            width=300> 在线人数:${count} ，额定数：100</TD>
                        <TD align=center width=222>你是第<FONT
                                color=#ff0000><B>${count}</B></FONT>位登录本系统的用户
                        </TD>
                    </TR>
                    <TR>
                        <TD align=right colSpan=3 height=40><FONT
                                color=#ff0000 size=2></FONT>&nbsp;</TD>
                    </TR>
                    <TR>
                        <TD align=right colSpan=2><FONT
                                color=blue></FONT><A
                                href="http://www.i2030.org"><FONT
                                color=red></FONT></A></TD>
                    </TR>
                    <TR>
                        <TD align=right colSpan=2></TD>
                    </TR>
                    <TR>
                        <TD align=right width=100 height=8><FONT
                                face="Verdana, Arial, Helvetica, sans-serif"
                                size=-1>用户名&nbsp;</FONT>
                        </TD>
                        <TD align=left>&nbsp; <input id="userName"
                                          class="INPUT_text" name=userName
                                          value=""></TD>
                    </TR>
                    <TR>
                        <TD colSpan=2>&nbsp;</TD>
                    </TR>
                    <TR>
                        <TD align=right width=100 height=8><FONT
                                face="Verdana, Arial, Helvetica, sans-serif"
                                size=-1>密码&nbsp;</FONT>
                        </TD>
                        <TD>&nbsp; <INPUT id="userPassword"
                                          class="INPUT_text" type=password
                                          name=userPassword value=""></TD>
                        <td><span id="namespan"></span></td>
                    </TR>
                    <TR>
                        <TD colSpan=2>&nbsp;</TD>
                    </TR>
                    <TR>
                        <TD align=right width=100 height=8><FONT
                                face="Verdana, Arial, Helvetica, sans-serif"
                                size=-1>登录类型&nbsp;</FONT>
                        </TD >
                        <TD >&nbsp; <select class="INPUT_text"
                                            name="userType" length="1"onsubmit="t1()" >
                            <option value="2">管理员</option>
                            <option value="1">老师</option>
                            <option value="0" >学生</option>
                        </select></TD>
                    </TR>
                    <TR>
                    <TR>
                        <TD align=right width=100 height=8><FONT
                                face="Verdana, Arial, Helvetica, sans-serif"
                                size=-1></FONT></TD>
                        <td align=>&nbsp;</td>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD>&nbsp; <INPUT type=submit value="登录"
                                          name=submit onclick="return checkName()"></TD>
                    </TR>
                    <TR>
                        <TD colSpan=8 height=100>&nbsp;</TD>
                    </TR>
                    <TR>
                        <TD colSpan=6 height=90>&nbsp;</TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD>&nbsp;<FONT color=red size=2></FONT></TD>
                    </TR>
                    </TBODY>
                </TABLE>
                <%--<center><p CLASS=first></p>
                    <p CLASS=second>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font
                            color="#800080" size="2">测试环境为:windows
                        xp+jdk1.5+Tomcat6.0+MyEclipse5.5+SQLServer2000</font></p>
                </center>--%>
                <%--<div style="display: inline">
                    <form action="register"  onsubmit="return checkSubmit1()"  method="post" style="width: 400px;height: fit-content;border: 1px solid #777">
                        <p style="text-align: center;height: fit-content;border: 1px solid #777;margin:0 auto">数据库person插入信息</p>
                        <table style="width: 400px; border-collapse:collapse">
                            <tr style="border: 1px solid #777">
                                <td>username</td>
                                <td><span id="username1span"></span></td>
                                <td><input type="text" id="username"name="username" onblur="checkUsername1()"></td>
                            </tr>

                            <tr style="border: 1px solid #777">
                                <td>name</td>
                                <td><span id="namespan"></span></td>
                                <td><input type="text" id="name"name="name"onblur="checkName()"></td>
                            </tr>
                            <tr style="border: 1px solid #777">
                                <td>age</td>
                                <td><span id="agespan"></span></td>
                                <td><input type="tel"id="age" name="age" onblur="checkAge()"></td>

                            </tr>
                            <tr style="border: 1px solid #777">
                                <td>telenum</td>
                                <td><span id="telenumspan"></span></td>
                                <td><input type="tel" id="teleno"name="telenum"onblur="checkTelenum()"></td>
                            </tr>
                        </table>
                        <p style="text-align:center;border: 1px solid #777;margin:0 auto"><input type="submit" value="插入"></p>
                    </form>
                </div>

                <div style="width:400px;">
                    <form action="delete" method="post"onsubmit="return delete()" style="border-style:solid;border-width: 1px;border-color: black;">
                        <p style="text-align: center;margin:0 auto">数据库users删除信息：</p>
                        <table style="width: 400px; border-collapse:collapse">
                            <tr style="border: 1px solid #777">
                                <td>username</td>
                                <td><span id="username2span"></span></td>
                                <td><input type="text"id="username2" name="username2"onblur="checkUsername2()"></td>
                            </tr>
                        </table>
                        <p style="text-align:center;margin: 0 auto"><input type="submit" value="删除"></p>
                    </form>
                </div>
                --%>
</body>
</html>