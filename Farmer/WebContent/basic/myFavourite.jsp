<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="silver">
<h1 align="center" style="color: red;">My Favourite</h1>
	<table align="center" border="1">
		<s:iterator var="p" value="%{#session.my_favourites}">
			
			
			
		 <tr><td> Product ID:</td>
				<td><h2 style="color: black;">${p.getPId()}</h2></td>
				<td>Product Name: </td>
				<td><h2 style="color: black;">${p.getPName()}</h2></td>
				<td>Product Description:</td>
				<td><h2 style="color: black;"> ${p.getPDescription()}</h2></td>
				<td>Product Price: </td>
				<td><h2 style="color: black;">${p.getPPrice()}</h2></td>
				
			</tr>
		</s:iterator>
	</table>

</body>
</html>