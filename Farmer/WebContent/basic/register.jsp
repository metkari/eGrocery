<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="css1/style.css">
  <script>
			function fn()
			{
				var str="AZaz09";
				for(i=0 ;i<str.length ;i++)
				{
					alert(str.charCodeAt(i));
				}
			}
				
			function validate()
			{
				
				var pwd = document.regform.cPassword.value;
				var pwd1 = document.regform.cPassword1.value;
				
				
				if(!(pwd==pwd1)){ 
					alert("password must be same ..!");
					return 1;  
					}  
					
					
				if(pwd.length < 8 || pwd.length > 12)
				{
					alert("Password length should be between 8-12 characters");
					//document.f1.pwd.value="";
					//document.f1.pwd.focus();
					//document.regform.cPassword.value="";
					
					return 1;
				}
				var numflag = false;
				var spflag = false;
				for(i=0 ;i<pwd.length ;i++)
				{
					
					var ascii = pwd.charCodeAt(i);
					if(ascii >= 48 && ascii <= 57)
						numflag = true;
					if(!((ascii >= 65 && ascii <= 90)||(ascii >= 97 && ascii <= 122)||(ascii >= 48 && ascii <= 57)))	
						spflag = true;
				}
				if(numflag==false || spflag == false)
				{
					alert("Password should have atleast one numeric and one special char");
					//document.f1.pwd.value="";
					//document.f1.pwd.focus();
					return 1;
				}
				return 0;
				
			}
		</script>   
		   
		 <script>
		 function check() {
			
			 var result =validate();
			 if(result==1){
							   
			   return false;
		     }
			 else {
		    return true;
			 }
		}
		
		 </script>
	  <%-- <script> 
	 
function validate (){  
  
var password=document.regform.cPassword.value;
var password1=document.regform.cPassword1.value;

  
 
 if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
}  
</script>  --%>


																	
</head>
<body>
	<s:form name="regform" action="process_register.action" cssClass="container" onsubmit="return check()">
	<%-- <s:label value="Register" cssClass="register"/> --%>
	<div class="register">
	<h1>Register</h1>
	</div>
	<br> <br> <br>
	<h6 style="color: red;" align="center">* Required Field</h6>
		<s:textfield label="Enter Name " name="cName" cssClass="reg_section personal_info" required="true" />
		<s:textfield label="Enter Email " name="cEmail" cssClass="reg_section personal_info" required="true"/>
		<s:password label="Enter Password " name="cPassword" cssClass="reg_section password" required="true"/>
		<s:password label="Confirm Password " name="cPassword1" cssClass="reg_section password" required="true"/>
		<s:textfield label="Enter Mobile No " name="cMobileno" cssClass="reg_section personal_info" required="true"/>
		<s:textfield label="Enter City/Location " name="cAddress" cssClass="reg_section password"/>
		<s:submit value="Register Me" cssClass="submit" align="center"/>
		<s:reset value="Reset" cssClass="submit" align="right"/> 
		
	</s:form>
</body>
</html>