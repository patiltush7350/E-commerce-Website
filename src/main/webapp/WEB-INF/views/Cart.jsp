<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table class="table table-bordered">

			<tr class="danger">
				<td colspan="6"><center>Wishlist</center>
			</tr>
			<tr>
				<td>Product Id</td>
				<td>Product Name</td>
				<td>Quantity</td>
				<td>Price</td>
				<td>Price</td>
				<td>Sub Total</td>
				<td>Operation</td>
			</tr>

			<c:forEach items="${cartItemList}" var="cartItem">
				<form
					action="<C:url value="/updateCartItem/${cartItem.cartitemId}"/>"
					method="get">

					<tr class="info">
						<td>${cartItem.productid }</td>
						<td>${cartItem.productName }</td>
						<td><input type="type=" text"value="${cartItem.quantity}"
							name="quantity"></td>
						<td>${cartItem.price}</td>
						<td>${cartItem.price * cartItem.quantity}</td>
						<td><input type="submit" value="Update" btn="btn-success" />
							<a
							href="<c:url value="/deleteCartIteam/${cartItem.cartItemId}"/>"
							class="btn btn-danger">Delete</a></td>
					</tr>
				</form>
			</c:forEach>
			<tr class="warning">
			<td colspan="4"> Total purchase Amount</td>
			<td colspan="2">${grandTotal}</td>
			</tr>
			<tr class="info">
			<td colspan="3">
           <center><a href="<c:url value="/productDisplay"/>" class="btn btn-success">Continue Your Shopping</a></center>
           </td>
           <td colspan="3">
        <center><a href="<c:url value="/checkout"/>"class="btn btn-success">Check Out</a></center>
		</td>
		</tr>
		</table>


	</div>
</body>
</html>