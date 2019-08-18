<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accept Product details Page</title>
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
				
				var pwd = document.acceptform.pPrice.value;
				/* var pwd1 = document.regform.cPassword1.value; */
				var numflag = false;
				
				for(i=0 ;i<pwd.length ;i++)
				{
					
					var ascii = pwd.charCodeAt(i);
					if(ascii >= 48 && ascii <= 57)
						numflag = true;
					
				}
				if(numflag==false)
				{
					alert("Price should have only numeric value");
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
</head>

<body>
<s:form name="acceptform" action="process_acceptProducts"  enctype="multipart/form-data" method="post" cssClass="container" onsubmit="return check()">
<h1>welcome <s:property value="#session.valid_user_dtls.cName" /></h1><br>
<%-- <%-- <table>
<s:a href="upload.jsp"> Upload a Image </s:a><br/>

Enter Product Details <sx:textarea name="pDescription"></sx:textarea><br>
<s:file label="Upload Product Image" name="abc"></s:file>
<s:textfield label="Enter the Product Name" name="pName"></s:textfield><br>
<s:textfield label="Enter the Product price" name="pPrice"></s:textfield><br>

<s:select  name="type" label="Select Type" list="typelist"  listKey="typeId" 
listValue="productType" ></s:select> 

Select the Type:-<select>
<option value="11">Fruits </option>
<option value="12"> Animals</option>
<option value="13">Cereals</option>
<option value="14">Flower</option>
<option value="15">Spices</option>
<option value="16">Fertilizers</option>
<option value="17">Dry Fruits</option>
<option value="18">Seeds</option>
</select>

<s:textfield label="Enter type of product" name="pType"></s:textfield>  


<s:submit value="Submit"/>
</table>
</s:form> --%> 


<s:a href="upload.jsp"> Upload a Image </s:a>
<s:textfield label="Enter Product Description " name="pDescription" cssClass="reg_section personal_info"></s:textfield>
<s:textfield label="Enter the Product Name" name="pName" cssClass="reg_section personal_info"></s:textfield>
<s:textfield label="Enter the Product price" name="pPrice" cssClass="reg_section personal_info"></s:textfield>
<s:div align="center">
Select the Type:-<select class="reg_section personal_info">
<option value="11">Fruits </option>
<option value="12"> Animals</option>
<option value="13">Cereals</option>
<option value="14">Flower</option>
<option value="15">Spices</option>
<option value="16">Fertilizers</option>
<option value="17">Dry Fruits</option>
<option value="18">Seeds</option>
</select>
</s:div>

<s:submit value="Submit" cssClass="submit"/>
</s:form>
</body>
</html>