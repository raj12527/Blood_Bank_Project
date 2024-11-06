<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
//EmailId are always unique
	<form action="buyersignup">
		Name: <input type="text" name="name"><br><br>
		Email: <input type="email" name="email"><br><br>
		Password: <input type="password" name="pass"><br><br>
		Age:<input type="text" name="age"><br><br>
		Gender:<input type="radio" id="male" name="gen" value="male">
        Male
        <input type="radio" id="female" name="gen" value="female">
        Female
        <input type="radio" id="others" name="gen" value="others">
        Other<br><br>
        Phone number: <input type="tel" name="mob"><br><br>
        BloodGroup:<select id="bg" name="bg">
            <option>O+</option>
            <option>O-</option>
            <option>A+</option>
            <option>A-</option>
            <option>B+</option>
            <option>B-</option>
            <option>AB+</option>
            <option>AB-</option>
        </select><br><br>
        <input type="submit" value="Signup">
        <input type="reset" value="Cancel">
	</form>
</body>
</html>