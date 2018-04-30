<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Hello World!</title>
	</head>
	<body>
		<h1>Alô mundo!</h1>
		<h2>Hora atual: <%= LocalDateTime.now() %></h2>
	</body>
</html>