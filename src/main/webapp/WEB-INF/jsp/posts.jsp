<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />
<script type="text/javascript" src="js/lib/tiny.editor.packed.js"></script>
</head>
<body>
	<script type="text/javascript" src="jquery-1.8.3.js"></script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script type="text/javascript" src="js/glogin.js">
		
	</script>


	<div id="navigation"><jsp:include page="include/navbar.jsp" /></div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">Student Post</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-success">
				<textarea name="content" id="tinyeditor" rows="4" cols="50">
				</textarea>
			</div>
			<button id="revokeButton" class="btn btn-primary" >Save
				post</button>

			<button id="revokeButton" class="btn btn-default"
				onclick="signout();document.forms[0].action = 'login.jsp'; return true;">Log
				out</button>
		</div>

	</div>


	<script>
		var editor = new TINY.editor.edit('editor',
				{
					id : 'tinyeditor',
					width : 584,
					height : 175,
					cssclass : 'tinyeditor',
					controlclass : 'tinyeditor-control',
					rowclass : 'tinyeditor-header',
					dividerclass : 'tinyeditor-divider',
					controls : [ 'bold', 'italic', 'underline',
							'strikethrough', '|', 'subscript', 'superscript',
							'|', 'orderedlist', 'unorderedlist', '|',
							'outdent', 'indent', '|', 'leftalign',
							'centeralign', 'rightalign', 'blockjustify', '|',
							'unformat', '|', 'undo', 'redo', 'n', 'font',
							'size', 'style', '|', 'image', 'hr', 'link',
							'unlink', '|', 'print' ],
					footer : true,
					fonts : [ 'Verdana', 'Arial', 'Georgia', 'Trebuchet MS' ],
					xhtml : true,
					bodyid : 'editor',
					footerclass : 'tinyeditor-footer',
					toggle : {
						text : 'source',
						activetext : 'wysiwyg',
						cssclass : 'toggle'
					},
					resize : {
						cssclass : 'resize'
					}
				});
	</script>
</body>
</html>