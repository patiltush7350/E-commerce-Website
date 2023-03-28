<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form value="./InsertProduct" modelAttribute="product" 
	method="post" enctype="multipart/form-data">

		<table align="center" class="table-bordered">

			<tr>
				<td colspan="2"><center>Product Info</center></td>
			<tr>
			<tr>
				<td>Product Name</td>
				<td><form:input path="productName" /></td>
			</tr>

			<tr>
				<td>Price</td>
				<td><form:input path="price" /></td>
			</tr>

			<tr>
				<td>stock</td>
				<td><form:input path="stock" /></td>
			</tr>

			<tr>
				<td>Category</td>
				<td><form:select path="categoryId">
						<form:option value="0" label="-------SELECT LIST------" />
						<form:options items="${categoryList}" />
					</form:select></td>


			</tr>


			<tr>
				<td>Supplier</td>
				<td><form:input path="supplierId" /></td>
			</tr>

			<tr>
				<td>Product Desciption</td>
				<td><form:input path="productDesc" /></td>
			</tr>


			<tr>
				<td>Product Image</td>
				<td><form:input type="file" path="productimage" /></td>
			</tr>


			<tr>
					<td colspan="2">
						<center>
							<input type="Submit" value="INSERT PRODUCT" />
						</center>
						
				</tr>

		</table>
	</form:form>

	<table class="table table-bordered">
		<tr>
			<td>Product Id</td>
			<td>Product Name</td>
			<td>price</td>
			<td>Stock</td>
			<td>Supplier Id</td>
			<td>Operation</td>
		</tr>


		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.productId}</td>
				<td>${product.productName}</td>
				<td>${product.price}</td>
				<td>${product.stock}</td>
				<td>${product.supplierId}</td>
				<td><a
							href="<c:url value="/editCategory/${product.productId}"/>"
							class="btn btn-success"> EDIT </a></td>
						<td><a
							href="<c:url value="/deleteCategory/${product.productId}"/>"
							class="btn btn-danger"> DELETE </a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
