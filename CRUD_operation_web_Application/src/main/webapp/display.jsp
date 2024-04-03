
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"
   import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>
body{
backgroun-color:blue;
}
th{
font-size:20px;
}
tr{
font-size:15px;
}
table {
  width: 100%;
}

th {
  height: 50px;
  color:blue;
}
tr{
height:5px;
}
tr:nth-child(even) {background-color: #f2f2f2;}
a{
text-decoration:none;
}
#bt{
margin-left:30px;
width:100px;
font-size:15px;
}
#home:hover{
background-color:#cfcfcfcf; 
font-size:20px;
}
#bt:hover{
background-color:#cfcfcfcf; 
font-size:25px;
transition-property: all;
transition-duration:0.5s;
transition-timing-function:ease-in();
}
#edit{
color:green
}
#delete{
color:red;
}


</style>
<body>
<br><br>
<hr>
<h1> Registered Students Information</h1>
<hr>
<hr>
<br><br>
<form action="edit.jsp" method="get">
<table border="3" font-weight="bold">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Id</th>
<th>Course</th>
<th>Email</th>
<th> option</th>
</tr>
<tr></tr>
<tr></tr>

<% 
Connection con=null;
Statement st=null;
ResultSet rs=null;
try
{

Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
st = con.createStatement();
rs = st.executeQuery("select * from studentRegistration");
	while(rs.next()){
		 String fName=rs.getString(1);
		 fName=fName.toUpperCase();
		 String lName=rs.getString(2);
		 lName=lName.toUpperCase();
		 String id=rs.getString(3);
		 id=id.toUpperCase();
		 String course=rs.getString(4);
		 course=course.toUpperCase();
		 String email=rs.getString(5);
		 email=email.toLowerCase();
%>

	<tr>
	<td><%out.println(fName);%></td>
	<td><%out.println(lName);%></td>
	<td style="font-weight:bold;"><%out.println(id);%></td>
	<td><%out.println(course);%></td>
	<td><%out.println(email);%></td>
	<td><button id="bt"><a id="edit" href='edit.jsp?Id=<%=rs.getString("id")%>'><i class="fa-solid fa-wand-magic-sparkles"></i>edit</a></button>
	<button id="bt"><a id="delete" href='delete.jsp?Id=<%=rs.getString("id")%>'><i class="fa-solid fa-trash"></i>Del</a></button>
	</td>
	</tr>
	<tr></tr>
	<tr></tr>
	
	<%
	}
}
	catch(Exception e){
		System.out.println("Error....."+e);
	}
	%>
</table>
<br><br>
Click here for home page 
<button id="home"><a href="home.jsp"><i class="fa-solid fa-house"></i></a></button>
</form>
</body>
</html>