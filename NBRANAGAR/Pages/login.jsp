<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Login</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/loginPageStyle.css" />
<script type="text/javascript">
	$(function() {
		$('#clear_b').click(function() {
			$('#usrname').val("");
			$('#passwd').val("");
		})

		$('#login_b').click(function() {
			document.loginForm.method = "POST";
			document.loginForm.action = "loginuser";
			document.loginForm.submit();
		})
	});
</script>
</head>

<body>
	<form name="loginForm" id="loginForm">
		<div class="login">
			<div class="login-triangle"></div>

			<h2 class="login-header">Log in</h2>

			<fieldset class="login-container">
				<p>
					<input type="text" placeholder="Username" id="usrname"
						name="username">
				</p>
				<p>
					<input type="password" placeholder="Password" id="passwd"
						name="password">
				</p>
				<p>
					<button id="login_b" type="submit">Log in</button>
				</p>
				<p>
					<button id="clear_b">Reset</button>
				</p>
			</fieldset>
		</div>
	</form>
</body>
</html>