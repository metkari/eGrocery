<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html>
<html>
<head>
<s:head />
<sx:head />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <h3 style="color: red">
		<s:actionerror />
	</h3> --%>
	<s:form action="process_reg">
		<s:textfield label="Enter Email" name="email" />
		<s:textfield label="Enter Name" name="name" />
		<s:password label="Enter Password" name="password" />
		<s:textfield label="Enter Preferences" name="prefs" />
		<s:textfield label="Enter Amount" name="depositAmt" />
		<s:textfield label="Enter Role" name="role" />
		<sx:datetimepicker label="Reg Date" name="regDate" />
		
		<s:submit value="Register Me" />
	</s:form>
</body>
</html>