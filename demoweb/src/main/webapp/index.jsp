<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head> 
<title>welcome to claire's web</title>  
<script type="text/javascript" src="js/jquery-3.1.0.min.js">
</script>
<script type="text/javascript">  
function doLogin(){ 
	var username=document.getElementById("username").value;
	var password =document.getElementById("password").value;
	$.ajax({       
        type: "Post",           
        url: "login?"+"username="+username+"&password="+password,  
        contentType: "application/text",     
        dataType: "text",     
        success: function(data) {     
        	window.location.href=data;     
        },     
        error: function(err) {     
            alert(err);     
        }     
    });
	
}  
</script>
</head>
<body>

<p>UserName <input id="username" type="text"/></p>  
<p>Password <input id="password" type="password"/></p> 
<p><input type="submit"  value="login" onclick="doLogin()"/></p>    

</body>
</html>
