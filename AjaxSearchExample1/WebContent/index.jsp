<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>  
var request=new XMLHttpRequest();  
function searchInfo()
{  
	var name=document.myform.name.value;  
	var url="AjaxSearch.jsp?val="+name;  
  	try
  	{  
		request.onreadystatechange=function()
		{  
			if(request.readyState==4)
			{  
				var val=request.responseText;
				document.getElementById('tops').innerHTML=val;
				/* if(val.includes("Used"))
				{
					alert(val);
					document.getElementById("submit").disabled="true";	
				}
				else if(val.includes("Available"))
				{
					alert(val);
					document.getElementById("submit").disabled="";
				} */
			}  
		}  
		request.open("GET",url,true);  
		request.send();  
	}
  	catch(e)
  	{
  		alert("Unable to connect to server");
  	}  
}  
</script>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax Example</title>
</head>
<body>
<h1>AJAX Example</h1>  
<form name="myform">
Enter First Name:
	<input type="text" name="name" onkeyup="searchInfo()">
	<input type="submit" name="submit" id="submit" value="Submit">
</form>  
<span id="tops"></span>
</body>  
</body>
</html>