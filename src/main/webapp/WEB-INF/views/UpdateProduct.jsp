<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url var="updateProduct" value="/UpdateProduct"/>
<form:form action= "${updateProduct}" modelAttribute="product" method="post">
<table align="center" class="table-bordered">
<tr>
<td colspan="2"> <center>Update Product </center> </td>
</tr>


<tr>
<td> Product Id</td>
<td> <form:input path="productId"/></td>
</tr>
<tr>
<td> Product Name</td>
<td> <form:input path="productName"/></td>
</tr>
<tr>
<td> Price </td>
<td> <form:input path="price"/></td>
</tr>
<tr>
<td> Stock </td>
<td> <form:input path="stock"/></td>
</tr>
<tr>
<td> Product Id</td>
<td> <form:input path="productId"/></td>
</tr>



















</table>






















</form:form>





























</body>
</html>