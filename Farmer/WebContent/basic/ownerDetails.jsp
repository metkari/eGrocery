<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center" style="color: red;">Contact Details</h1>
	<table align="center">
		<s:iterator var="c" value="%{#session.ownerDetail}">
			<tr><td><h2 style="color: lime;">ID:</h2> </td>
				<td><h2 style="color: lime">${c.getCId()}</h2></td>
			</tr>
			<tr><td><h2 style="color: lime">Seller Name:</h2> </td>
				<td><h2 style="color: lime">${c.getCName()}</h2></td>
			</tr>
			<tr><td><h2 style="color: lime">Contact No.:</h2> </td>
				<td><h2 style="color: lime">${c.getCMobileno()}</h2></td>
			</tr>
			<tr><td><h2 style="color: lime">Email ID.:</h2> </td>
				<td><h2 style="color: lime">${c.getCEmail()}</h2></td>
			</tr>
			<tr><td><h2 style="color: lime">Place:</h2> </td>
				<td><h2 style="color: lime">${c.getCAddress()}</h2></td>
			</tr>

		</s:iterator>
	</table>


</body>
</html>