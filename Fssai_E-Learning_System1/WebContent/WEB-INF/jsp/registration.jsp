<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
        <title>Information Repogitory / Registration</title>
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
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper" style="width: 70%">
                        
                            <form:form  action="register.html" autocomplete="on" method="post" commandName="register"> 
                                <h1> Sign up </h1>
                                  <span style="color: red;" ><center>${error}</center><br></span>
                                  
                                <table>
                                <tr>
	                                <td>
		                                <p> 
		                                    <form:label path="firstname" class="firstname" data-icon="u">Your First Name</form:label>
		                                    <form:input path="firstname" name="firstname"  type="text" placeholder="First Name" />
		                                    <form:errors path="firstname" cssClass="error" />
		                                </p>
		                             </td>
		                             <td>&nbsp;&nbsp;</td>
	                              	 <td>
		                                <p> 
		                                    <form:label path="lastname" class="lastname" data-icon="u">Your Last Name</form:label>
		                                    <form:input path="lastname" name="lastname"  type="text" placeholder="Last Name" />
		                                    <form:errors path="lastname" cssClass="error" />
		                                </p>
                                	</td>
                                </tr>
                                <tr>
									 <td>                                 
		                                <p> 
		                                    <form:label path="emailid" class="emailid" data-icon="e" > Your email</form:label>
		                                    <form:input path="emailid" name="emailid"  type="email" placeholder="mysupermail@mail.com"/>
		                                    <form:errors path="emailid" cssClass="error" /> 
		                                </p>
		                              </td>
		                              <td>&nbsp;&nbsp;</td>
		                              <td>  
		                                <p> 
		                                    <form:label path="mobileno" class="mobileno" data-icon="u">Your mobile</form:label>
		                                    <form:input path="mobileno" name="mobileno"   placeholder="eg. X8df!90EO"/>
		                                    <form:errors path="mobileno" cssClass="error" />
		                                </p>
		                               </td>
		                        </tr>      
                                <tr>
                                	<td>
                                		<p> 
                                    		<form:label path="password" class="password" data-icon="p">Your password </form:label>
                                    		<form:input path="password" name="password"  type="password" placeholder="eg. X8df!90EO"/>
                                    		<form:errors path="password" cssClass="error" />
	                                   </p>
	                                </td>
	                                <td>&nbsp;&nbsp;</td>   
         							<td>
		                                <p> 
		                                    <form:label path="repassword" class="repassword" data-icon="p">Please confirm your password </form:label>
		                                    <form:input path="repassword" name="repassword"  type="password" placeholder="eg. X8df!90EO"/>
		                                    <form:errors path="repassword" cssClass="error" />
		                                </p>
		                            </td>
		                          </tr>
		                        <tr>
                                	<td colspan="3">
                                		<p> 
                                    		<form:label path="gender"  >Gender </form:label>
                                    		<form:radiobutton path="gender" name="gender" value="male" checked="false" />Male
                                    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    		<form:radiobutton path="gender" name="gender" value="female" checked="false" />FeMale
                                    		<form:errors path="gender" cssClass="error" />
	                                   </p>
	                           			<br>
	                                </td>
	                                
		                          </tr>
		                       
		                        <tr>
                                	<td>
                                		<p> 
	                                   		<form:label path="country" >Country </form:label>
	                                   		<form:select path="country">
            								<form:option value="0" label="Select" />
            								<form:options items="${countryList}" itemValue="countryId" itemLabel="countryName" />
            								</form:select>
	        								<form:errors path="password" cssClass="error" />
	                                   
	                                   </p>
	                                </td>
	                                <td>&nbsp;&nbsp;</td>   
         							<td>
		                                <p> 
		                                    <form:label path="state" >State </form:label>
		                                
		                                	<form:select path="state">
            								<form:option value="0" label="Select" />
            								<form:options items="${stateList}" itemValue="stateId" itemLabel="stateName" />
            								</form:select>
	        								<form:errors path="password" cssClass="error" />
	                                   
		                                
		                                </p>
		                            </td>
		                          </tr>
		                        <tr>
                                	<td>
                                		<p> 
                                    		<form:label path="city" >City </form:label>
											<form:select path="city">
            								<form:option value="0" label="Select" />
            								<form:options items="${cityList}" itemValue="cityId" itemLabel="cityName" />
            								</form:select>
                                    		<form:errors path="password" cssClass="error" />
	                                   </p>
	                                </td>
	                                <td>&nbsp;&nbsp;</td>   
         							<td>
		                                <p> 
		                                    <form:label path="repassword">Zip Code </form:label>
		                                    <form:input path="zipCode" name="zipCodd"   placeholder="eg. 110011"/>
		                                    <form:errors path="repassword" cssClass="error" />
		                                </p>
		                            </td>
		                          </tr>
		                        <tr>
                                	<td>
                                		<p> 
                                    		<form:label path="addressLine1" >Address Line1 </form:label>
                                    		<form:input path="addressLine1" name="addressLine1"  />
                                    		<form:errors path="password" cssClass="error" />
	                                   </p>
	                                </td>
	                                <td>&nbsp;&nbsp;</td>   
         							<td>
		                                <p> 
		                                    <form:label path="addressLine2"  data-icon="p">Address Line2 </form:label>
		                                    <form:input path="addressLine2" name="addressLine2" />
		                                    <form:errors path="repassword" cssClass="error" />
		                                </p>
		                            </td>
		                          </tr>
		                        
		                        
		                        
		                        <tr>
		                        	<td colspan="3" align="center">        
                                		<p class="signin button"> 
											<input type="submit" value="Sign up"/> 
									</p>
									</td>
								</tr>	
								<tr>
									<td colspan="3">
                                		<p class="change_link">  
											Already a member ?
											<a href="loginForm.html" class="to_register"> Go and log in </a>
										</p>
                        			</td>
                        		</tr>	
                            </form:form>
                        </div>
						</table>
                    </div>
            </section>
        </div>
    </body>
</html>