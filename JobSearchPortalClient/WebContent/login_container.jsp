<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<!-- <script src="/jquery/jquery.js"></script> -->
<script src="/jquery/jquery.validate.js"></script>
<script>
$.validator.setDefaults({
	submitHandler: function() { alert("submitted!"); }
});

$().ready(function() {
	// validate the comment form when it is submitted
	$("#LoginForm").validate();
});
</script>

<style type="text/css">
#LoginForm { width: 500px; }
#LoginForm label { width: 250px; }
#LoginForm label.error, #LoginForm input.submit { margin-left: 253px; }

</style>

<form id="LoginForm" class="login" style="width:700px; margin-left:110px;" action="/JobSearchPortalClient/ValidateLogon" method="post">
	<div style="float:left; !important;">
		<div class="textboxname1">&nbsp;User ID</div>
		<input type="text" id="user" name="user" class="textbox" style="height:25px;"  minlength="2" required></input>
	</div>
	<div style="float:left; margin-left:20px; width:150px;">
		<div class="textboxname2">&nbsp;Password</div>
		<input type="password" name="pwd" id="pwd" class="textbox" style="height:25px;"  minlength="2" required></input>
	</div>
	<div style="float:left; margin-left:25px; width:15%; margin-top:24px;">
		<button type="submit" onclick="false" class="login_button" type="submit" title="" id="login"  style="transition-duration:0s, 0s, 0s; ">Log On</button>
	</div>
	<div style="float:left; margin-left:2px; width:30%; margin-top:21px;">
		<span class="forgot">Not a User ?</span>&nbsp;<a href="register.jsp" style="color:#88B3C7; font-size:12px;">Register here</a>
	</div> 
	
</form>
