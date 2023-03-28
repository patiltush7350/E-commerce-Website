<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./perform_Login" method="post">
<table border="1" align="center">
<tr bgcolor="gray">
<td colspan="2"> <center>Sign In</center></td>
</tr>

<tr bgcolor="pink">
<td>Login Name</td>
<td><input type="text" name="username" required/></td>
</tr>

<tr bgcolor="pink">
<td> Password</td>
<td> <input type="password" name="password" required/></td>
</tr>
<tr bgcolor="gray">
<td colspan="2"><center><input type="Submit" value="Login"></center>
</td>
</tr>
</table>
</form>
</body>
</html>
