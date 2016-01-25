<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<link type="text/css" rel="stylesheet" href="selectPresident.css"/>
		<title>Presidents</title>
	</head>
	<body>

	
		<form action="choiceServlet" method="POST">
			<c:forEach var="thisPresident" items="${allPresidents}">
				<input type="radio" name="number" value=" ${thisPresident.number}"/> 
				<img src=${thisPresident.photo}>
				<br>
			</c:forEach>

			<br> <input type="submit" value="Submit" />

		</form>


	</body>
</html>