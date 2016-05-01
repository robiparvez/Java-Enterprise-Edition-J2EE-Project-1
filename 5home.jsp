<html>
	<center>
	<head>
		<title>HOME PAGE</title>
	</head>
	<body>
			<h1><font color='green'>SUCCESS !!!</font></h1>
			<%
			String message  =  (String)session.getAttribute("username");
			String validator = (String) session.getAttribute("loginAuthenticated");
			
			if( validator != null && validator == "TRUE" )
			{
				
				out.println("<h2> Welcome User : "+ message +"</h2>");
			}
			else
			{
				RequestDispatcher Dispatch = request.getRequestDispatcher("2login.jsp");
				Dispatch.forward(request,response);
				out.println("<h2>NEW BROWSER !!!</h2>");
			}
			%>
			<br>  <br>
			<form method="get" action="LogoutServlet"> 
					
				<button type='submit'>SIGN OUT !!</button>
				
			</form> 
	</body>
</html>