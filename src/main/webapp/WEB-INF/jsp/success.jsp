<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<link href="js/lib/bootstrap-wysihtml5/src/bootstrap-wysihtml5.css"
	rel="stylesheet" />
</head>
<body>


	<script type="text/javascript"
		src="js/lib/bootstrap-wysihtml5/lib/js/jquery-1.7.2.min.js"></script>


	<script type="text/javascript"
		src="js/lib/bootstrap-wysihtml5/lib/js/wysihtml5-0.3.0.js"></script>
	<script type="text/javascript"
		src="js/lib/bootstrap-wysihtml5/lib/js/prettify.js"></script>


	<script src="bootstrap/js/bootstrap.js">
		
	</script>
	<script type="text/javascript"
		src="js/lib/bootstrap-wysihtml5/src/bootstrap-wysihtml5.js"></script>

	<script type="text/javascript" src="js/glogin.js">
		
	</script>


	<div id="navigation"><jsp:include page="include/navbar.jsp" /></div>

	<!-- 
	<legend>Student Enrollment Login Success</legend>
	 -->
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">Student Enrollment Login success</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-success">
				<textarea id="textarea" rows="4" cols="50">
				</textarea>
			</div>
		</div>
		<button class="btn btn-primary" onclick="signout();">Log out</button>
	</div>



	<script>
		$('.textarea').wysihtml5();
	</script>

	<script type="text/javascript" charset="utf-8">
		$(prettyPrint);
	</script>
</body>
</html>