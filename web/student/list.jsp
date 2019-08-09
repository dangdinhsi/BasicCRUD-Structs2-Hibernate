<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Sidang
  Date: 8/7/2019
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <br>
    <div align="center"><a href="create-student.html">Add new student</a></div>
<br>
<table class="table table-bordered text-center">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Roll number</td>
        <td>Email</td>
        <td>CreatedAt</td>
        <td>UpdatedAt</td>
        <td>DeletedAt</td>
        <td colspan="2">Option</td>
    </tr>
    <c:forEach var="pr" items="${list}">
        <tr>
            <td>${pr.id}</td>
            <td>${pr.name}</td>
            <td>${pr.rollnumber}</td>
            <td>${pr.email}</td>
            <td>${pr.createdAt}</td>
            <td>${pr.updatedAt}</td>
            <td>${pr.deletedAt}</td>
            <td><a href="edit-student.html?id=${pr.id}">edit</a></td>
            <td><a href="delete-student.html?id=${pr.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
