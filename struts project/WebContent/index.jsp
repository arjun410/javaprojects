<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<style type="text/css">
table {
	background-color: green;
	border: 1px;
	
}
td {
	color: red;
}

</style>
<script type="text/javascript">
alert("hi");
function validateform() {
	var name=document.myform.uname.value;
    var password=document.myform.password.value;

if(name==null || name==""){
	alert("name can't be blank");
	retun false;
}else if(password.length<6){
	alert("password must be atleast 6 characters long ");
	return false;
}
}
</script>
</head>
<body>

<table> 
<s:form action="verify" name="myform" onsubmit="return validateform(this)">
<th  align="right" style="color: blue "><h2 align="right">welcome to login page</h2></th>
    <tr>
    <td colspan="10">
	<s:textfield name="uname"  label="Username" /><br>
	</td>
	</tr>
	
	<tr>
	<td colspan="10">
	<s:password name="password" label="Password" /><br>
	</td>
	</tr>
	
    <tr>
    <td colspan="10"> 
    <s:submit  value="login" align="right" /> 
    </td>
    </tr> 


</s:form>
</table>
</body>
</html>