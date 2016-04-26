
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="/jquery/jquery.js"></script>
<script src="/jquery/jquery.validate.js"></script>
<script>
$.validator.setDefaults({
	submitHandler: function() { alert("submitted!"); }
});

$().ready(function() {
	// validate the comment form when it is submitted
	$("#third").validate();
});
</script>

    <!-- Start HTML form -->
	<form name="form" method="post" id="third" class="niceform" action="/JobSearchPortalClient/CreateUser" >
		<table style="margin-top:20px; ">
		<tr style="height:50px;">
				<td>
					<label style="margin-right:0px;"><strong style="float: left;"><span class="blue">*</span> Email ID : </strong></label></br>
				</td>
				<td >
					<input name="email" type="text"  size="25" minlength="2" required/>
				</td>
				<td style="padding-left:10px;">
					<label><strong style="float: left;"><span class="blue">*</span> Choose Password : </strong></label>
				</td>
				<td>
					<input  name="password" type="password"  size="25" minlength="2" required></input>
				</td>
			</tr>
			<tr style="height:50px;">
				<td>
					<label style="margin-right:0px;"><strong style="float: left;"><span class="blue">*</span> Name : </strong></label></br>
				</td>
				<td >
					<input name="name" type="text"  size="25" minlength="2" required/>
				</td>
				<td style="padding-left:10px;">
					<label><strong style="float: left;"><span class="blue">*</span> Gender : </strong></label>
				</td>
				<td>
					<input  name="gender" type="email"  size="25" minlength="2" required></input>
				</td>
			</tr>
			<tr style="height:50px;">
				<td>
					<label><strong style="float: left;"><span class="blue">*</span> Contact Number : </strong></label>
				</td>
				<td >
					<input name="phone" type="text" size="25" minlength="10" required></input>
				</td>
				
				<td style="padding-left:10px;">
					<label><strong style="float: left;"><span class="blue">*</span> City : </strong></label>
				</td>
				<td>
					<input name="city" type="text"  size="25" minlength="2" required></input>
				</td>
				
			</tr>
			<tr style="height:50px;">
				<td>
					<label><strong style="float: left;"><span class="blue">*</span> State : </strong></label>
				</td>
				<td >
					<input name="state" type="text" size="25" minlength="2" required></input>
				</td>
				<td style="padding-left:10px;">
						<label><strong style="float: left;"><span class="blue">*</span> Country : </strong></label><br />
				</td>
				<td >
					<input name="country" type="text" size="25" minlength="2" required></input>
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td style="padding-left:20px; padding-top:10px;">
					<input type="submit" class="buttonSubmit" value="Register" ></input>
				</td>
			</tr>
			
			</table>
	       

</form>

