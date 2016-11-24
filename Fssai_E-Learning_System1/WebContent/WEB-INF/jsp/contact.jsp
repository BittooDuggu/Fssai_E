<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
	<title>Information Repogitory</title>
</head>
<body>
<h2>Registration</h2>
<form:form method="post" action="register.html">

	<table>
	<tr>
		<td><form:label path="firstname">First Name</form:label></td>
		<td><form:input path="firstname" /></td> 
	</tr>
	<tr>
		<td><form:label path="lastname">Last Name</form:label></td>
		<td><form:input path="lastname" /></td>
	</tr>
	<tr>
		<td><form:label path="emailid">Email</form:label></td>
		<td><form:input path="emailid" /></td>
	</tr>
	<tr>
		<td><form:label path="password">Password</form:label></td>
		<td><form:input path="password" /></td>
	</tr>
	<tr>
		<td><form:label path="repassword">Re-Password</form:label></td>
		<td><form:input path="password" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="Register"/>
		</td>
	</tr>
</table>	
	
</form:form>
</body>
</html>
