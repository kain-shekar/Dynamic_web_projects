<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information Form</title>
</head>
<style>
input{
width:300px;
height:30px;
color:blue;
font-size:15px;
border-radius:5px;
}
#name{
width:150px;
height:30px;
}
h1{
color:red;
font-weight:200px;
}
h2{
color:Blue;
}
h4{
color:green;
}
.form{
height:500px;
width:100%;
}
button input{
color:red;
font-size:20px;
}
span{
font-size:20px;
font-family: cursive;
}
a{
color:green;
font-size:20px;
text-decoration:none;
}
input:hover{
height:40px;
width:320px;
border: 2px solid crimson;
transition-property: all;
transition-duration:0.5s;
transition-timing-function:ease-in();
}
#name:hover{
height:40px;
width:170px;
border: 2px solid crimson;

}
img{
width:100%;
height:100px;
}

</style>
<body>
<header>
<img src="trinity.png">
</header>
<center>
<h1>Welcome Trinitians</h1>
<h4>A Web Application on CRUD-Operations</h4>
<hr>
<br><br>
<h2>Enter your details Here </h2>
<div class="form">
<form action="StudentInfoServlet" method="post">
<span>Enter Student Name :</span><input id="name"  type="text" placeholder="first Name" name="fName" required="" >
<input id="name" type="text" placeholder="Last Name" name="lName" required="">
<br><br>
<span>Enter Student Id_No.  :</span> <input type="text" placeholder="Enter Id" name="id" required="">
<br><br>
<span>Enter Student course :</span> <input type="text" placeholder="Enter course" name="course" required="">
<br><br>
<span>Enter Student Email :</span> <input type="text" placeholder="Enter Email" name="email" required="">
<br><br>
<button>
<input type="submit" value="submit"></button>
<br><br>Click Down for Registered Students Details....:<br><br>
<button><a href="display.jsp">click here</a></button>
<br><br><br>
<br>
<hr>

</form>
</div>
</center>
</body>
</html>