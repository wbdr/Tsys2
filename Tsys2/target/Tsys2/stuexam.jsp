<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/31
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        var counttime=3600;
        function startTime() {
            var s=counttime%60;

            var m=Math.floor(counttime/60);

            if(m>0){
                document.getElementById("daytime").value = m+":"+s;
            }else   if(m<=0){
                document.getElementById("daytime").value ="00:"+s;}
            counttime--;
            if(counttime<=0){
                document.getElementById("submit").submit();
            }
            window.setTimeout("startTime()",1000);

        }
        //-->
    </script>
    <script>
        function fun(name){
            obj = document.getElementsByName(name);
           var result="";
            for(k in obj){
                if(obj[k].checked)
                   result+=k;
            }
            odj.set(result);
        }

    </script>
</head>
<body onload="startTime()">

<h1 align="center">必修考试</h1>
<form name="testForm" id="TestForm" method="post"
      action="Cexam_giveScore" target="mainFrame">
    <input type="hidden" name="size"
           value="${size}"/></td>
    <table width="534" align="center">
        <caption>课程号:${cno}</caption>
        <tr>
            <td><input type="hidden" name="sno" value="${sno}"
            /></td>
        </tr>
        <tr>
            <td width="109">${sname
                    }你的学号是:${scode}</td>
            <td width="403">单选:${singleSize}个,多选:${multiSize}个,判断:${judgeSize}
                个,填空:${fillSize}个,共有${size}道题。剩余时间:<input type="text" name="daytime" id="daytime" size="5" />
            <td><input type="submit" name="submit" value="交卷"/></td>
        </tr>
    </table>
    <table width="534" align="center">
        <tr>
            <td width="516" height="23">一、单选题 :(每题 4分)</td>
        </tr>
    </table>
    <%
        int i = 0;
    %> <c:forEach items="${singleQuestions}" var="question">
    <table class="TH" width="534" height="300" border="3"
           align="center">
        <%
            i++;
        %>
        <tr>
            <td height="90">题目<%=i%>: ${question.qcontext}</td>
        </tr>
        <tr>
            <td height="25">A选项: ${question.qsection0}</td>
        </tr>
        <tr>
            <td height="25">B选项: ${question.qsection1}</td>
        </tr>
        <tr>
            <td height="25">C选项: ${question.qsection2}</td>
        </tr>
        <tr>
            <td height="25">D选项: ${question.qsection3}</td>
        </tr>
        <tr>
            <td height="25"><label><font class="BODY">A</font><input
                    type="radio"
                    name="answer_<%=i%>" value="0"/></label>&nbsp;&nbsp;
                <label><font
                        class="BODY">B</font><input type="radio"
                                                    name="answer_<%=i%>" value="1"/></label>
                &nbsp;&nbsp;<label><font class="BODY">C</font><input
                        type="radio"
                        name="answer_<%=i%>" value="2"/></label>&nbsp;&nbsp;
                <label><font
                        class="BODY">D</font><input type="radio"
                                                    name="answer_<%=i%>" value="3"/></label></td>
        </tr>
        <tr>
            <td>
                <input type="hidden" name="question_id_<%=i%>"
                       value="${question.qid}"/></td>
        </tr>
    </table>
</c:forEach>
    <table width="534" align="center">
        <tr>
            <td height="23">二、多选题:(每题 4分)</td>
        </tr>
    </table>
    <c:forEach items="${multiQuestions}"
               var="question1">
        <table class="TH" width="534" height="435" border="3"
               align="center">
            <%
                i++;
            %>
            <tr>
                <td>
                    <input type="hidden" name="question_id_<%=i%>"
                           value="${question1.qid}"/></td>
            </tr>
            <tr>
                <td height="90">题目<%=i%>: ${question1.qcontext}</td>
            </tr>
            <tr>
                <td height="25">A选项: ${question1.qsection0}</td>
            </tr>
            <tr>
                <td height="25">B选项: ${question1.qsection1}</td>
            </tr>
            <tr>
                <td height="25">C选项: ${question1.qsection2}</td>
            </tr>
            <tr>
                <td height="25">D选项: ${question1.qsection3}</td>
            </tr>
            <tr>
                <td height="25"><label><font class="BODY">A</font><input
                        type="checkbox" name="answer_<%=i%>" value="0"
                /></label>&nbsp;&nbsp;
                    <label><font class="BODY">B</font><input type="checkbox"
                                                             name="answer_<%=i%>" value="1"/></label>
                    &nbsp;&nbsp;<label><font
                            class="BODY">C</font><input type="checkbox"
                                                        name="answer_<%=i%>"
                                                        value="2"/></label>&nbsp;&nbsp; <label><font
                            class="BODY">D</font><input
                            type="checkbox" name="answer0_<%=i%>"onsubmit="fun(answer0_<%=i%>)" value="3"
                    /></label></td>
            </tr>
        </table>
    </c:forEach>
    <table width="534" align="center">
        <tr>
            <td>三、填空题:(每题 4分)</td>
        </tr>
    </table>
    <c:forEach items="${fillQuestions}" var="question2">
        <table width="534" align="center">
            <%
                i++;
            %>
            <input type="hidden" name="question_id_<%=i%>"
                   value="${question2.qid}"/>
            <tr>
                <td height="92">题目<%=i%>: ${question2.qcontext}</td>
            </tr>
            <tr>
                <td height="25"><input type="text" name="answer_<%=i%>"
                                       size="80"/></td>
            </tr>
        </table>
    </c:forEach>
    <table width="534" align="center">
        <tr>
            <td>四、判断题:(每题 4分)</td>
        </tr>
    </table>
    <c:forEach items="${judgeQuestions}" var="question3">
        <table width="534" align="center">
            <%
                i++;
            %>
            <input type="hidden" name="question_id_<%=i%>"
                   value="${question3.qid}"/>
            <tr>
                <td height="92">题目<%=i%>: ${question3.qcontext}</td>
            </tr>
            <tr>
                <td height="25"><label><font class="BODY">正确</font><input
                        type="radio" name="answer_<%=i%>" value="0"
                /></label>&nbsp;&nbsp;
                    <label><font class="BODY">错误</font><input type="radio"
                                                             name="answer_<%=i%>" value="1"/></label>
                </td>
            </tr>
        </table>
    </c:forEach>
</form>
</body>
</html>
