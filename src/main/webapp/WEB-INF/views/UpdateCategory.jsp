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
<form action="<c:url value="/UpdateCategory"/>" method="post">
<table align="center" class="table">
					<td colspan="2"></td>
				<tr>
					<td>Category Id:</td>
					<td><input type="CategoryId" name="catgId" value="${category.categoryId}" readonly /></td>
				</tr>
				<tr>
					<td>Category Name:</td>
					<td><input type="CategoryName" name="catgName" value="${category.categoryName}" required="" /></td>
				</tr>
				<tr>
					<td>Category Description:</td>
					<td><input type="CategoryDesc" name="catgDesc" value="${category.categoryDesc}" required="" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<center>
							<input type="Submit" value="Update Category" />
						</center>
						
				</tr>















</table>












</form>
</body>
</html>