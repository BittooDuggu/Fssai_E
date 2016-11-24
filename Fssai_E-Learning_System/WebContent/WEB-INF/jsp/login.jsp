<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
    <style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
    </head>
    <body>
        <div class="container">
            <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form:form  action="login.html" method="post" autocomplete="on" commandName="login"> 
                                <h1>Log in</h1> 
                                <p class="error" style="margin-left: 120px;">${error}</p>
                                <p> 
                                    <form:label path="userId" class="userId" data-icon="u" > Your email or username </form:label>
                                    <form:input path="userId" name="userId"  type="text" placeholder="myusername or mymail@mail.com"></form:input>
                                    <form:errors path="userId" cssClass="error" />
                                </p>
                                <p> 
                                    <form:label path="password" class="youpasswd" data-icon="p"> Your password </form:label>
                                    <form:input path="password" name="password"  type="password" placeholder="eg. X8df!90EO" />
                                    <form:errors path="password" cssClass="error" /> 
                                </p>
<%--                                 <p class="keeplogin"> 
									<form:checkbox path="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<form:label path="loginkeeping">Keep me logged in</form:label>
								</p>
 --%>                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="registrationForm.html" class="to_register">Join us</a>
								</p>
                            </form:form>
                        </div>
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>