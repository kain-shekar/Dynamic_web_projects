<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Record Updation</title>
</head>
<style>
body{
background-image: linear-gradient(to left, rgba(15,255,75,0), rgba(12,155,25,1));
}
input{
width:300px;
height:30px;
color:black;
font-size:15px;
border-radius:5px;
}
#name{
width:150px;
height:30px;
}
span{
font-size:20px;
}
a{
color:red;
text-decoration:none;
font-size:20px;
}
</style>
<body>
<% 
Connection con=null;
Statement st=null;
ResultSet rs=null;
String Id = request.getParameter("Id"); 
try{

	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
	 st = con.createStatement();
		rs = st.executeQuery("select * from studentRegistration where id='"+Id+"'");
	%>	
<form action="EditServlet" method="post">	
<%	while(rs.next())
	{   
	String id=rs.getString(3);
	id=id.toUpperCase();
	String fName=rs.getString(1);
	fName=fName.toUpperCase();
	String lName=rs.getString(2);
	lName=lName.toUpperCase();
	String course=rs.getString(4);
	course=course.toUpperCase();
	String email=rs.getString(5);
	email=email.toLowerCase();

	%>
<center>
<br>
<br>
<span>Enter Student Id :</span> <input type="text"  name="id" value="<%out.println(id);%>" required="">	<br><br>
<span>Enter Student Name:</span> <input id="name" type="text"  name="fName"  value="<% out.println(fName);%>" required="" >
<input id="name" type="text" name="lName" value="<% out.println(lName);%>" required="">
<br><br>
<span>Enter Student course :</span> <input type="text"  name="course" value="<%out.println(course);%>" required="">
<br><br>
<span>Enter Student Email :</span> <input type="text"  name="email" value="<%out.println(email);%>" required="">
<br><br>
<input type="submit"  value="update"></center>
<%
}
}
catch(Exception e){
	System.out.println("Error....."+e);
}
%>

<br><br>
<h2>Click Down for Registered Students Details....:</h2>
<button><a href="display.jsp">Click here</a></button>
</form>
</body>
</html>
</body>
</html>