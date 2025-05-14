<!-- this solution worked perfectly and my project is running now on the live server. Please make sure that you have checked the Dynamic web Module. Steps: 
Right-click on project->goto properties->project facets->check the Dynamic Web Module. -->

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Note Taker : Home page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="card shadow bg-white py-5">
			<img alt="" class="img-fluid mx-auto" style="max-width: 400px;"
				src="img/notebook.png">
			<h1 class="text-uppercase text-center mt-3">
				<font color="#7E57C2">Start taking your notes</font>
			</h1>

			<div class="container text-center">
				<a href="add_notes.jsp" class="btn btn-outline-primary text-center" >Start
					here</a>
			</div>


		</div>

	</div>
</body>
</html>
