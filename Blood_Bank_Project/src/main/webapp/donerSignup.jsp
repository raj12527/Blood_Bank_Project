<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Signup Page</title>
    <link rel="stylesheet" type="text/css" href="donersignup.css">
</head>
<body>

    <form action="donerSignUp">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br> 
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br><br>
        
        <label for="pass">Password:</label>
        <input type="password" id="pass" name="pass"><br><br>
        
        <label for="mob">Phone:</label>
        <input type="tel" id="mob" name="mob"><br><br>
        
        <label for="dob">DOB:</label>
        <input type="date" id="dob" name="dob"><br><br>
        
        <label for="age">Age:</label>
        <input type="text" id="age" name="age"><br><br>
        
        <label for="bg">Blood Group:</label>
        <select id="bg" name="bg">
            <option>O+</option>
            <option>O-</option>
            <option>A+</option>
            <option>A-</option>
            <option>B+</option>
            <option>B-</option>
            <option>AB+</option>
            <option>AB-</option>
        </select><br><br>
        
        <label>Gender:</label>
        <input type="radio" id="male" name="gen" value="male">
        <label for="male">Male</label>
        <input type="radio" id="female" name="gen" value="female">
        <label for="female">Female</label>
        <input type="radio" id="others" name="gen" value="others">
        <label for="others">Others</label><br><br>
        
        <input type="submit" value="Signup">
        <input type="reset" value="Cancel">
    </form>

</body>
</html>
	