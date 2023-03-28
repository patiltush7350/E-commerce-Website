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


<div class="row">
<c:forEach items="${productList}" var="product">
<div class ="col-sm-4 col-md-3">

<a href ="<c:url value="/totalProductDisplay/${product.productId}"/>" class="thumbnail">
<img src="<c:url value="/resources/image/${product.productId}.jpg"/>"alt="Generic placeholder thumbnail">
</a>

<p align="center">${product.productName}</p>
<p align="center">Price: INR ${product.price}</p>
<p align="center">Stock: ${product.stock}</p>
















</div>
</c:forEach>






</div>
</body>
</html>