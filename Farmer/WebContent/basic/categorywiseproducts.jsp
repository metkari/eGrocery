<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hi86</h1>
${listOfProduct}
<table>
		<s:iterator var="p" value="%{listOfProduct}">
			<tr>
				<td>${p.pId}</td>
				<td>${p.pName}</td>
				<td>${p.pDescription}</td>
				<td>${p.type.productType}</td>
				<td><s:a action="addtoFavarite">Add to Favorite
			<s:param name="id">${v.pId}</s:param>
					</s:a></td>
					<td><s:a action="delete">Delete
			<s:param name="id">${v.pId}</s:param>
					</s:a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>