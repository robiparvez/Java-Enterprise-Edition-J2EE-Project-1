<html> 
	<center>
	<head> 
		<title>INDEX</title> 
	</head>
		<body> 
<!--
		<style>
#outer
{
    width:100%;
    text-align: center;
}
.inner
{
    display: inline-block;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
}

#right {
    line-height:30px;
    background-color:#191970;
    height:650px;
    width:100px;
    float:right;
    padding:5px;	      
}

#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;

}
#nav {
    line-height:50px;
    background-color:#191970;
    height:650px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:600px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
	<title>Login</title>
	<style>
		#scr{
			line-height:30px;
		    background-color:#eeeeee;
		    height:200px;
		    width:300px;
		    float:center;
		    padding:5px;	
		}
	</style>
</head>

 -->

<body>
		
<!--JAVASCRIPT STARTS -->

<script type="text/javascript">
function getXMLObject()  
{
   var xmlHttp = false;
   try 
   {
     xmlHttp = new ActiveXObject("Msxml2.XMLHTTP")  
   }
   catch (e) 
   {
     try 
	 {
       xmlHttp = new ActiveXObject("Microsoft.XMLHTTP")  
     }
     catch (e2) 
	 {
       xmlHttp = false   
     }
   }
   if (!xmlHttp && typeof XMLHttpRequest != 'undefined') 
   {
     xmlHttp = new XMLHttpRequest();        
   }
   return xmlHttp;  
}
 
///object creation of getXMLObject
var xmlhttp = new getXMLObject();
 
function login() 
{
  if(xmlhttp) 
  {
    xmlhttp.open("POST","2login.jsp",true); 
    xmlhttp.onreadystatechange  = handleServerResponse;
    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xmlhttp.send(); 
  }
}



function registrationFunction() 
{
  if(xmlhttp) 
  {
    xmlhttp.open("POST","3register.jsp",true); 
    xmlhttp.onreadystatechange  = handleServerResponse;
    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xmlhttp.send(); 
  }
}



function resetPassword() 
{
  if(xmlhttp) 
  {
    xmlhttp.open("POST","4forgetPass.jsp",true); 
    xmlhttp.onreadystatechange  = handleServerResponse;
    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xmlhttp.send(); 
  }
}


function showHOME() 
{
  if(xmlhttp) 
  {
    xmlhttp.open("POST","5home.jsp",true); 
    xmlhttp.onreadystatechange  = handleServerResponse;
    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xmlhttp.send(); 
  }
}

function logout() 
{
  if(xmlhttp) 
  {
  	xmlhttp.open("POST","LogoutServlet",true); 
    xmlhttp.onreadystatechange  = handleServerResponse;
    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xmlhttp.send();
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
       
        document.getElementById("message").innerHTML=xmlhttp.responseText;
     }
   }
}
</script>



<div id="header">
<h1>Index Page</h1>
</div>

<div id="nav">
</div>

<div id="right">
</div>

<div id="section">
		<div id="outer">
  			<button type="button" onclick="registrationFunction()">Registration</button>
  		 	<button type="button" onclick="login()">Login</button>
  		 	<button type="button" onclick="resetPassword()">Reset Password</button>
  		 	<button type="button" onclick="logout()">Logout</button>
  		 	<button type="button" onclick="showHOME()">HOME</button>
		</div>

    <div id="message">

    </div>
</div>


</html> 