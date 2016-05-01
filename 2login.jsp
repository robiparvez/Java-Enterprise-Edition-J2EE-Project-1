<html>
	<center>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>LOGIN PAGE</title>
	</head>
	
	<script type="text/javascript">

					function getXMLObject()  //XML OBJECT
					{
					   var xmlHttp = false;
					   try 
					   {
						 xmlHttp = new ActiveXObject("Msxml2.XMLHTTP")  // For Old Microsoft Browsers
					   }
					   catch (e) 
					   {
						 try 
						 {
						   xmlHttp = new ActiveXObject("Microsoft.XMLHTTP")  // For Microsoft IE 6.0+
						 }
						 catch (e2) 
						 {
						   xmlHttp = false   // No Browser accepts the XMLHTTP Object then false
						 }
					   }
					   if (!xmlHttp && typeof XMLHttpRequest != 'undefined') 
					   {
						 xmlHttp = new XMLHttpRequest();        //For Mozilla, Opera Browsers
					   }
					   return xmlHttp;  // Mandatory Statement returning the ajax object created
					}

					var xmlhttp = new getXMLObject();	//xmlhttp holds the ajax object

					function ajaxFunction() 
					{
					  if(xmlhttp) 
					  {
						var txtname = document.getElementById("txtname");
						xmlhttp.open("POST","getname",true); //getname will be the servlet name
						xmlhttp.onreadystatechange  = handleServerResponse;
						xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
						xmlhttp.send("txtname=" + txtname.value); //Posting txtname to Servlet
					  }
					}

					function handleServerResponse() 
					{
					   if (xmlhttp.readyState == 4) 
					   {
						 if(xmlhttp.status == 200) 
						 {
						    document.getElementById("message").innerHTML=xmlhttp.responseText;
						 }
						 else 
						 {
							alert("Error during AJAX call. Please try again");
						 }
					   }
					}
				</script>
	
	<body>
			<h1><i>LOGIN FORM</i></h1>
			<hr />
			<%
			
			String message  = (String)session.getAttribute("ErrorMessage");
			
				out.println("<h2>"+ message +"</h2>");
			
			%>
			<form action="LogControl" method="post"> 
					
						ENTER USERNAME :<input type="text" name="username" id="username" required> 
						ENTER PASSWORD :<input type="password" name="password" id="password"required> 

						<input type="button" value="Submit"  onclick="ajaxFunction();" 
						<div id='content2'></div>	
			</form> 
			
<!--			<h2>NEW USER? <a href="Registration">REGISTER NOW !!</a></h2>
			<br/>
			<h2>FORGOT PASSWORD? <a href="ForgotPassword">RECOVER NOW !!</a></h2>
			
 -->	

<!--	 
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript">

			 var form = $('#form2');
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
					 $('#content2').html(result);
					 }
				 });
				 return false;
				 }
			 ); 
	</script>
	 -->
	</body>
</html>