<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete option for Records</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<style>
h2{
color:red;
}
h3{
color:white;
}
button{
width:100px;
height:50px;
}
a{
text-decoration:none;
}
body{
background:url("deleted.jpg");
background-size:cover;
}

</style>
<body>
<%String Id = request.getParameter("Id");
		Id=Id.toUpperCase();%>
<div class="box">
<h2>You Can DELETE The Record Now....</h2>
<h3>To Delete the Record</h3>
<form action="DeleteRecordServlet" method="post">
<input type="text" placeholder="Enter student Id" name="id" value=<%out.println(Id); %>>
<button><input type="submit" value="Delete"></button>
<br><br>
<h3>Click here for Student Information</h3>
<br>

<button>
 <a href="display.jsp" <i class="fa-solid fa-circle-info"></i>></a></button>
<br><br>
<h3>Click here for home page</h3>
<button>
<a href="home.jsp" <i class="fa-solid fa-house"></i>></a></button></div>
</form>
</div>
</body>
</html>