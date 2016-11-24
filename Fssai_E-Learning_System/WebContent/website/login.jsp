
<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags" %>
<%
response.setHeader("Pragma","No-cache");     
response.setHeader("Cache-Control","no-cache");     
response.setDateHeader("Expires",   0); 

%>
<script language="javascript" type="text/javascript">
function validateFields1() {
	if(document.getElementById("User").value=="") {
		document.getElementById("User").style.borderColor = "red";
		document.getElementById("UserError").style.display='block';
		document.getElementById("User").focus();
		return false;
		}else{
		    document.getElementById('User').style.borderColor = "#ccc";
		    document.getElementById("UserError").style.display='none';
		   
		    }if(document.getElementById("pwd").value=="") {
		    	document.getElementById("pwd").style.borderColor = "red";
		    	document.getElementById("pwdError").style.display='block';
		    	document.getElementById("pwd").focus();
		    	return false;
		    	}else{
		    	    document.getElementById('pwd').style.borderColor = "#ccc";
		    	    document.getElementById("pwdError").style.display='none';
		    	   
		    	    }if(document.getElementById("captcha").value=="") {
		    	    	document.getElementById("captcha").style.borderColor = "red";
		    	    	document.getElementById("captchaError").style.display='block';
		    	    	document.getElementById("captcha").focus();
		    	    	return false;
		    	    	}else{
		    	    	    document.getElementById('captcha').style.borderColor = "#ccc";
		    	    	    document.getElementById("captchaError").style.display='none';
		    	    	   
		    	    	    }
return true;
}


</script>

    <!-- main section -->
    <section class="section-form-margin-top">
        <div class="container">

<cf:form name="myForm" class="registration-box" style ="margin:0px auto; width:35%; margin-top:15%; margin-top:5%;" action="loginProcess.fssai" method="post" commandName="login" onsubmit="return validateFields()">

            <!-- login form -->
            <div class="row">
            ${error}
                <div class="col-md-4 hidden-xs"></div>
                <div class="col-md-12  col-xs-12">
                        <div class="form-group">
                            <label for="user id">User Id:</label>
								<cf:errors path="userId" cssClass="error" />
                            <label id="UserError" class="error visibility">Please enter user id</label>
                             <cf:input path="userId" class="form-control" id="userId" placeholder="Enter Your User ID"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <cf:errors path="password" cssClass="error" />
                            <label id="pwdError" class="error visibility">Please enter Password</label>
                            <cf:password path="password" class="form-control" id="password" placeholder="Enter Your Password"/>
                        </div> 
                        
                        
                        
                        <div>
                        <label id="captchaError" class="error visibility">Please enter captcha</label>
                        </div>
                        <div style ="width:100%;">
   
                        <div class="form-group" style = "width:40%;float:left;">
                        
                        
                         	<img src="./Captcha.jpg" name="imgcaptcha"></img></td>
						</div>
						<div class="form-group" style="width: 100%;float:left;">
							<input type="button" class = "login-btn" style ="width: 40%; height:40px; float: left; margin-right: 5%;" value="Refresh Captcha" onclick="window.document.myForm.imgcaptcha.src='';window.document.myForm.imgcaptcha.src='./Captcha.jpg?random='+new Date().getTime();">
							 <cf:errors path="captcha" cssClass="error" />
							 <cf:input path="captcha" style ="width: 40%;float: left;margin-right: 5%;" class="form-control" id="captcha" placeholder="Enter YCaptcha"/>
						</div>             
                        
                        </div>
                        <div class="form-group login-btn-padding-top">
                            <input type="submit" class="form-control login-btn" id="button" value="Submit" />
                        </div>
   
                    <!-- forgot password -->
                    <div class="text-center forgot-margin-top">
                        <a href="#" target="_blank">Forgot Password ?</a>
                    </div>                
                </div>
                <div class="col-md-4 hidden-xs"></div>
            </div>
</cf:form>      
        </div>

    </section>

    <!-- footer -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h6>Design and Developed by &nbsp;<a href="http://www.zentechinfo.com/" target="_blank" style="color:#1c1b1b; text-decoration:underline;">Zentech Info Solutions Pvt. Ltd.</a> © FSSAI 2016- All Right Reserved.</h6>
                </div>
            </div>
        </div>
    </section>



</body>
</html>