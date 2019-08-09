<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Sidang
  Date: 8/7/2019
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Update student</h1>
<s:if test="message!=null">
    <font color="aqua">
        <s:property value="message"></s:property>
    </font>
</s:if>
<s:if test="errormessage!=null">
    <font color="red">
        <s:property value="errormessage"></s:property>
    </font>
</s:if>
<s:form action="update-student" method="POST">
    <div><s:textfield name="student.id" label="ID"></s:textfield></div>
    <div><s:textfield name="student.name" label="NAME"></s:textfield></div>
    <div><s:textfield name="student.rollnumber" label="ROLL NUMBER"></s:textfield></div>
    <div><s:textfield name="student.email" label="EMAIL"></s:textfield></div>
    <div>
        <s:submit value="EDIT"></s:submit>
        <s:reset value="RESET"></s:reset>
    </div>
</s:form>
<a href="list-student.html">BACK TO LIST</a>
</body>
</html>
