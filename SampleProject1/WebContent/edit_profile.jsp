<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@ page import="com.impelsys.model.*" %>
  <%@ page import="java.util.*" %>
<%
StudentModel temp=new StudentModel();
if(request.getAttribute("student")!=null)
temp=(StudentModel)request.getAttribute("student");	
System.out.println(temp.getRoll()+" "+temp.getName());
%>
<%
if(request.getAttribute("successmsg")!=null)
{  String msg=(String)request.getAttribute("successmsg");
	out.println("<font color=green size=5>"+msg+"</font>");
}
else if(request.getAttribute("errorsmsg")!=null)
out.println("<font color=red size=5>Not Updated </font>");

%>
<form method=get action="ModifyServlet">
  Roll <input type=text size=10 name="roll" readonly value='<% out.println(temp.getRoll()); %>'><br><br>
  Name: <input type=text size=10 name="name" value='<% out.println(temp.getName()); %>'><br><br>
  Father Name: <input type=text size=10 name="fathername" value='<% out.println(temp.getFathername()); %>'><br><br>
  <input type=submit name="confirmupdate" value="Update" >
   <input type=submit name=cancel value="Cancel" >
  </form>

</body>
</html>