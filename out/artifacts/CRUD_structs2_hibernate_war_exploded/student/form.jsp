<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sidang
  Date: 8/7/2019
  Time: 6:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Create Student</h1>
<s:form action="save-student" method="POST">
    <s:textfield name="student.name" label="NAME"></s:textfield>
    <s:textfield name="student.rollnumber" label="ROLL NUMBER"></s:textfield>
    <s:textfield name="student.email" label="EMAIL"></s:textfield>
    <s:submit value="SAVE"></s:submit>
</s:form>
<a href="list-student.html">BACK TO LIST</a>
</body>
</html>
