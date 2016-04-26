<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register New User</title>

 	<script src="js/jquery.min.js"></script>
    <script src="javascript/ajax.js"></script>
    
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  
	<link href="css/kickstart-forms.css" rel="stylesheet" type="text/css" />
	<link href="css/kickstart-buttons.css" rel="stylesheet" type="text/css" />
	<link href="css/fonts/fontawesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	  
	<link rel="stylesheet" href="css/main.css" type="text/css" media="screen" />
	<link href="css/template.css" rel="stylesheet" type="text/css" />
	<link href="css/styles.css" rel="stylesheet" type="text/css" />


<!-- menus -->
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/topmenu.css" rel="stylesheet" type="text/css" />
<style type="text/css">

.fad
{
	border-top-left-radius: 8px;
}
body
{
    width:100%;
    margin:auto;
}
.main
{
background-color:#dbdbdb;
	width:100%;
	
}
.homeContainer
{
	width:90%;
	margin:auto;
}
.mylogo
{
	background: url('images/1logo.png') ;
	width:110px;
	height:70px;
	float:left;
	margin-left:110px;
	
	    -moz-box-shadow: 0 0 2px rgba(255,255,255,.5);
    -webkit-box-shadow: 0 0 2px rgba(255,255,255,.5);
    box-shadow: 0 0 2px rgba(255,255,255,.5);
    box-shadow: -10px 10px 20px #03344c;	
    -moz-border-radius: 5px;
    border-radius: 5px;
    border-top-left-radius:0px;
    border-top-right-radius:0px;
}
.icon-search
{
	color:white;
}

.resultStyle{
float: left;
    position: absolute;
    left: 40%;
    font-size: 20px;
    color: black;
    top:34%;
    }
.resultStyle1{
  	float: center;
    left: 20%;
    font-size: 20px;
    color: black;
    top:34%;
    }   
    
</style>
</head>

<body >
<center>
<div class="main"  >
	<div class="header">
		<%@ include file="homePageHeaderReg.jsp" %>
		<%@ include file="homePageHeader2Reg.jsp" %> 
	</div>
	<div class="homeContainer" style="min-height:570px;">
	
					 <div class="modal-body" data-backdrop="static">
         <%@include file="createUser.jsp" %>
        </div>
				
				</div>
				<div>
				
	<%@ include file="footer.jsp" %>
	
</div>
</div>
</center>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>