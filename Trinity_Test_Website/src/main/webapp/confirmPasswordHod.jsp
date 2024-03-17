<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password confirmed</title>
<link rel="stylesheet" href="confirmPasswordHod.css">
</head>
<body>
<div class="center">
<div class="label">
<h2>For faculty Information</h2>
<h2>For Student Information</h2>
</div>
<div class="btn">
<button class="btn-shadow" id="faculty-enter" onclick="faculty()" >Enter</button>
<button class="btn-shadow" id="student-enter" onclick="student()" >Enter</button>
</div></div>

<div class="popup">
<form action="HomeHodServlet" method="post">
<div class="close-btn" id="close">&times;</div>
<div class="form-element">
<input type="text" id="input" name="stdOrFacId" placeholder="">
<input type="submit" id="submit" value="submit"></div>
</form>
</div>




<script type="text/javascript">
//alert("Login success");
document.getElementById("faculty-enter").addEventListener("click",function(){
	document.querySelector(".popup").classList.add("active");
});

document.getElementById("close").addEventListener("click",function(){
	document.querySelector(".popup").classList.remove("active");
});
document.getElementById("student-enter").addEventListener("click",function(){
	document.querySelector(".popup").classList.add("active");
});

document.getElementById("close").addEventListener("click",function(){
	document.querySelector(".popup").classList.remove("active");
});
function student(){
	document.getElementById("input").placeholder="Enter Student Id";
}
function faculty(){
	document.getElementById("input").placeholder="Enter Faculty Id";
}

</script>
</body>
</html>