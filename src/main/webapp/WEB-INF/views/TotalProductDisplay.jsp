<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value="/addToCart/${product.productId}" />">

<table class="table-bordered">
<tr>
<td rowspan="8">
<img src="<c:url value="/resources/image/${product.productId}.jpg" />" height="300" alt="Generic placeholder thumbnail">  
</td>
<tr>
<td> Product Id</td>
<td> ${product.productId}</td>
</tr>

<tr>
<td> Product Name</td>
<td> ${product.productName}</td>
</tr>

<tr>
<td> Price</td>
<td> ${product.price}</td>
</tr>


<tr>
<td> Stock</td>
<td> ${product.stock}</td>
</tr>

<tr>
<td>Category</td>
<td> ${product.categoryId}</td>
</tr>

<tr>
<td>Supplier Id</td>
<td> ${product.supplierId}</td>
</tr>

<tr>
<td>Description</td>
<td> ${product.productDesc}</td>
</tr>
 
 <tr>
<td> Quantity 
<select name="quantity">
<option value="1"> 1 </option>
<option value="2"> 2 </option>
<option value="3"> 3 </option>
<option value="4"> 4 </option>
<option value="5"> 5 </option>
<option value="6"> 6 </option>
</select>
</td>

<td> <input type="submit" value= "Buy" class= "btn btn-success"></td>
</tr>

</table>
</form>
</body>
</html>