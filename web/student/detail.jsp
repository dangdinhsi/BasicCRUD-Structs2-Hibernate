<%@ taglib prefix="s" uri="/struts-tags" %>
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
<h1>Student Detail</h1>
<div>NAME:<s:property value="student.name"></s:property></div>
<div>ROLL NUMBER:<s:property value="student.rollnumber"></s:property></div>
<div>EMAIL:<s:property value="student.email"></s:property></div>
</body>
</html>
