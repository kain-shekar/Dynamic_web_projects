<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOD Validation</title>
<link rel="stylesheet" href="home_hod.css">
</head>
<body>
<form action="HomeHodServlet" method="post">
<h1>LOGIN</h1>
<input class="box" type="text" name="hodId" placeholder="Enter HOD ID" required>
<input class="box" type="password" name="hodPassword" placeholder="Enter password" required>
<input id="btnEnter" type="submit" value="Enter">
<div class="button">
<input class="btn" type="reset" value="Reset">
<input class="btn" type="submit" value="Reset Password">
</div>
</form>
</body>
</html>