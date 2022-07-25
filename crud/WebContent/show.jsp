<%@page import="java.util.List"%>
<%@page import="com.bean.Student"%>
<%@page import="com.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	List<Student> list=StudentDao.getAllStudent();
%>

<table border="5" width="100%" cellpadding="5px" cellspacing="5px">
	<tr>
			<th>ID</th>
			<th>FNAME</th>
			<th>LNAME</th>
			<th>EMAIL</th>
			<th>MOBILE</th>
			<th>GENDER</th>
			<th>ADDRESS</th>
			<th>EDIT</th>
			<th>DELETE</th>
	</tr>
	<%
		for (Student s: list)
		{
	%>
	<tr>
		<td><%=s.getId() %></td>
		<td><%=s.getFname() %></td>
		<td><%=s.getLname() %></td>
		<td><%=s.getEmail() %></td>
		<td><%=s.getMobile() %></td>
		<td><%=s.getGender() %></td>
		<td><%=s.getAddress() %></td>
		<td>
			<form name="edit" method="post" action="StudentController">
				<input type="hidden" name="id" value="<%=s.getId()%>">
				<input type="submit" name="action" value="EDIT">			
			</form>
		</td>
		<td>
			<form name="delete" method="post" action="StudentController">
				<input type="hidden" name="id" value="<%=s.getId()%>">
				<input type="submit" name="action" value="DELETE">		
			</form>
		</td>
</tr>
<%
	}

%>

</table>
<a href="index.jsp">Add New Student</a>
</body>
</html>