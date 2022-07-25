<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>    </title>
</head>
<body>
<%
		Student s=(Student)request.getAttribute("s");

%>
<form name="insert" method="post" action="StudentController">
<table>
	<tr>
		<td><input type="hidden" name="id" value="<%=s.getId()%>">
	</tr>
	<tr>
		<td>First Name</td>
		<td><input type="text" name="fname" value="<%=s.getFname()%>"></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="lname" value="<%=s.getLname()%>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%=s.getEmail()%>"></td>
	</tr>
	<tr>
		<td>Mobile</td>
		<td><input type="text" name="mobile" value="<%=s.getMobile()%>"></td>
	</tr>
	<tr>
		<td>Gender</td>
		<%
			if (s.getGender().equals("male"))
			{
		%>
		<td>
			<input type="radio" name="gender" value="male" checked="checked">Male
			<input type="radio" name="gender" value="female">Female
		</td>
		<%
			}
			else if (s.getGender().equals("female"))
			{
		%>
		<td>
			<input type="radio" name="gender" value="male" >Male
			<input type="radio" name="gender" value="female" checked="checked">Female
		</td>
		<%
			}
			else
			{		
		%>
		<td>
			<input type="radio" name="gender" value="male">Male
			<input type="radio" name="gender" value="female">Female
		</td>
		<%
			}
		%>
	</tr>
	<tr>
		<td>Address</td>
		<td><textarea rows="5" cols="20" name="address"><%=s.getAddress()%></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" name="action" value="update">
		</td>
	</tr>
	
</table>

</form>
</body>
</html>