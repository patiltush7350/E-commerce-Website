<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fill the title</title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: auto;
	width: 100%;
}

tr {
	text-align: center;
}

fieldset table {
	margin: auto;
	text-align: left;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
}

legend {
	color: white;
	background-color: #333;
}
</style>
</head>
<body>
	<fieldset>
		<legend> Add Category</legend>
		<form action="<c:url value="./AddCategory"/>" method="post">
			<table>
				<tr>
					<td colspan="2"></td>
				<tr>
					<td>Category Name:</td>
					<td><input type="CategoryName" name="catgName" required="" /></td>
				</tr>
				<tr>
					<td>Category Desc:</td>
					<td><input type="CategoryDesc" name="catgDesc" required="" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<center>
							<input type="Submit" value="ADD CATEGORY" />
						</center>
				</tr>

			</table>
		</form>
	</fieldset>
	<fieldset>
		<legend>Manage Category</legend>
		<form>
			<table class="table-bordered">
				<tr>
					<td>Category Id</td>
					<td>Category Name</td>
					<td>Category Description</td>
					<td>Operation</td>
				</tr>
				<c:forEach items="${listCategories}" var="category">
					<tr>
						<td>${category.categoryId}</td>
						<td>${category.categoryName}</td>
						<td>${category.categoryDesc}</td>
						<td><a
							href="<c:url value="/editCategory/${category.categoryId}"/>"
							class="btn btn-success"> EDIT </a></td>
						<td><a
							href="<c:url value="/deleteCategory/${category.categoryId}"/>"
							class="btn btn-danger"> DELETE </a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</fieldset>
</body>
</html>







