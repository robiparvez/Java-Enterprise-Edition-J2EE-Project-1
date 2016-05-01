<html>
	<center>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>REGISTRATION PAGE</title>
	</head>
	<body>
			<h1><i>REGISTRATION FORM</i></h1>
			<hr />
			<%
			
			String message  =  (String)session.getAttribute("ErrorMessage");
			
			out.println("<h2>"+ message +"</h2>");
			
			%>
			
				<form name='form1' action="Registration" method="post" id='form1'> 
							User Name :
							<input type="text" name="username" required>
							Password :
							<input type="password" name="password" required>
							<input type="Submit"/></td>
								<div id='content1'></div>	
				</form> 

	<!--		<h2>ALREADY REGISTERED? <a href="LogControl"> PLEASE LOGIN !!</a></h2>
		-->	
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript">

			 var form = $('#form1');
			 form.submit
			 (
				function () 
				{
				$.ajax
				({
					 type: form.attr('method'),
					 url: form.attr('action'),
					 data: form.serialize(),
					 success: function (data) 
					 {
					 var result=data;
					 $('#content1').html(result);

					 }
				 });
				 return false;
				 }
			 ); 
	</script>
	</body>
</html>