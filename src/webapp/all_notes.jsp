<%@ page import="org.hibernate.*"%>
<%@ page import="com.helper.FactoryProvider"%>
<%@ page import="java.util.*"%>
<%@ page import="com.entities.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Take : All Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt- 3">
					<img class="card-img-top m-4 mx-auto" style="width:100px;" src="img/notebook.png" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text">
						<%=note.getContent() %>
						<br>
						<% SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
							String str = formatter.format(note.getAddedDate());
						%>
						<p><b><%=str %></b></p>
						
						 <%-- <%=note.getAddedDate() %>
						 
						 String str = formatter.format(note.getAddedDate());
						 	System.out.print(str);
						  --%>
						
						</p>
						<div class="container text-center mt-2">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
						</div>
						
					</div>
				</div>	
				


				<%
				}

				s.close();
				%>

			</div>
		</div>



	</div>
</body>
</html>