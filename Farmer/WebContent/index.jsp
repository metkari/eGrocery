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
<h1>Register Page</h1>
<a href="basic/hello.action">click here</a>


<a href="basic/procees_showProduc">click to fruits</a><br>
<s:a action="categorywise_productlist" namespace="/basic" >Go to fruit List <s:param name="typeId">11</s:param></s:a>

</form>
</body>
</html>