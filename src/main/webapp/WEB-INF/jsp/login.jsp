<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<title>Corporate Portal Login</title>
</head>

<body>
	<script type="text/javascript"
		src="js/lib/bootstrap-wysihtml5/lib/js/jquery-1.7.2.min.js"></script>


	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<div id="navigation"><jsp:include page="include/navbar.jsp" /></div>

	<div class="container">
		<div class="jumbotron">
			<div>
				<h1>Welcome to Online Corporate Portal Login</h1>
				<p>Login to explore the complete features!</p>
			</div>
		</div>

		<div></div>
	</div>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form id="myForm" method="post"
							class="bs-example form-horizontal" commandName="studentLogin">
							<fieldset>
								<legend>Corporate Portal Login Form</legend>

								<div class="form-group">
									<label for="userNameInput" class="col-lg-3 control-label">User
										Name</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="userName"
											id="userNameInput" placeholder="User Name" />
										<form:errors path="userName" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="passwordInput" class="col-lg-3 control-label">Password</label>
									<div class="col-lg-9">
										<form:input type="password" class="form-control"
											path="password" id="passwordInput" placeholder="Password" />
										<form:errors path="password" cssClass="error" />
									</div>
								</div>

								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default">Cancel</button>

									<button class="btn btn-primary">Login</button>
								</div>

							</fieldset>
						</form:form>
						<span id="signinButton"> <span class="g-signin"
							data-callback="signinCallback"
							data-clientid="45051347351-uvletc9fj9kt8g6frf4v7hh70krne0hf.apps.googleusercontent.com"
							data-cookiepolicy="single_host_origin"
							data-requestvisibleactions="http://schema.org/AddAction"
							data-scope="https://www.googleapis.com/auth/plus.login"> </span>
						</span>

					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/glogin.js">
		
	</script>
</body>
</html>