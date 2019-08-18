<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
 <link rel="stylesheet" href="css/style.css">
 
</head>
<body>

<%  
StringBuffer sb=new StringBuffer();  
for(int i=1;i<=5;i++)  
{  
    sb.append((char)(int)(Math.random()*79+23+7));  
}  
String cap=new String(sb);  
%>  

<script type ="text/javascript">  
function validation(){  
    var c1 = document.forms.loginform.cap1.value;  
    var c2 = document.forms.loginform.cap2.value;
    
    if(!(c1==c2)){ 
		alert("sorry.. Please enter Correct captcha.!");
		return 1;  
		} 
    return 0;
    }  
 
</script> 
 <script>
		 function check() {
			
			 var result =validation();
			 if(result==1){
							   
			   return false;
		     }
			 else {
		    return true;
			 }
		}
		
		 </script>

<h3 style="color: red">
		<s:actionerror />
	</h3>
	<h3 style="color: green">
		${sessionScope.mesg}
	</h3>
	<div style="color:#0000FF">
  

	<s:form name="loginform" action="process_login"  cssClass="login" onsubmit="return check()">
		
		
	     <s:label value="LOGIN" cssClass="login-input" />
		<s:textfield cssClass="login-input" name="cEmail" />
		<s:password cssClass="login-input"  name="cPassword" />
		
		<s:textfield cssClass="login-input" name="cap2" value="Entere Captcha Here" />
		<input type="hidden" name="cap1"  value='<%=cap%>' readonly="readonly"/>
	
		
		
		<s:submit value="Login" cssClass="login-submit" />
		<s:reset value="Reset Fields" cssClass="login-submit" />
		<h6 style="color: white; font-size: medium; font-style: oblique;">New User ?</h6>   
		<a style="color: silver; font-style: italic;" href="register.jsp">Register here</a>
	
		<s:div style="background-color: aqua"  ><s><i><font face="casteller"><%=cap%></font></i></s></s:div>
	</s:form>
	</div>
</body>
</html>