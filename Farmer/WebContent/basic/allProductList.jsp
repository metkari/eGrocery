<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center">
		<s:iterator var="p" value="%{#session.allProducts}">
			<tr>
				<td>Product ID: ${p.getPId()}</td>
				<td><s:a action="show_ownerDetails">Name: ${p.getPName()}<s:param
							name="product.pId">${p.getPId()}</s:param>
					</s:a></td>

				<td>Product Description: ${p.getPDescription()}</td>
				<td><img src=${p.getPImage() } width="160" height="160"></td>

				<td><s:a action="process_addToFavourite">Add to favorite <s:param
							name="product.pId">${p.getPId()}</s:param>
						<s:param name="customer.cId">
							<s:property value="#session.valid_user_dtls.cId" />
						</s:param>
					</s:a></td>
					<td>Product Price: Rs. ${p.getPPrice()}</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>