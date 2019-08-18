<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Advertisement Page</title>

</head>
<body bgcolor="silver">
<form action="profile.jsp">
<input type="submit" value="Back" align="left">
<h1 align="center" style="color: red;">My Advertisements</h1>
	<table align="center">
		<s:iterator var="p" value="%{#session.my_adds}">
		<tr><td><h2 style="color: black;;">Product Id:</h2> </td>
				<td><h2 style="color: black;">${p.getPId()}</h2></td>
			</tr>
			<tr><td><h2 style="color: black;">Product Name:</h2> </td>
				<td><h2 style="color: black;">${p.getPName()}</h2></td>
			</tr>
			<tr><td><h2 style="color: black;">Product Description:</h2> </td>
				<td><h2 style="color: black;">${p.getPDescription()}</h2></td>
			</tr>
			<tr><td><h2 style="color: black;">Product Price:</h2> </td>
				<td><h2 style="color: black;">${p.getPPrice()}</h2></td>
			</tr>
			
			
			<%-- <tr>
				<td><h1 style="color: lime">Product Id: ${p.getPId()}></h1></td>
				<td><h1 style="color: lime">Product Name: ${p.getPName()}</h1></td>
				<td><h1 style="color: lime">Product Description: ${p.getPDescription()}</h1></td>
				<td><h1 style="color: lime">Product Price: ${p.getPPrice()}</h1></td>

			</tr> --%>
		</s:iterator>
	</table>
	</form>
</body>
</html>