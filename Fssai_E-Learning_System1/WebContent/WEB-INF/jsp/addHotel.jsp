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
                    <div id="wrapper" style="width: 70%;margin-left: 100px;">
                        
                            <form:form  action="addHotelDetails.html" autocomplete="on" method="post" commandName="hotel"> 
                                <h1> Add Hotel Details </h1>
                                  <span style="color: red;" >${error}<br></span>
                                <center>  	
                                <table style="width: 70%;margin-left: 100px;">
                                <tr>
	                                <td>
		                                <p> 
		                                    <form:label path="hotelName" class="hotelName" >Hotel Name</form:label>
		                                    <form:input path="hotelName" name="hotelName"  type="text" placeholder="Hotel Name" />
		                                    <form:errors path="hotelName" cssClass="error" />
		                                </p>
		                             </td>
		                             <td>&nbsp;&nbsp;</td>
	                              	 <td>
		                                <p> 
		                                    <form:label path="hotelType" class="hotelType" data-icon="">Hotel Type</form:label>
		                                    <form:input path="hotelType" name="hotelType"  type="text" placeholder="Hotel Type" />
		                                    <form:errors path="hotelType" cssClass="error" />
		                                </p>
                                	</td>
                                </tr>
                                <tr>
									 <td>                                 
		                                <p> 
		                                    <form:label path="hotelLocation" class="hotelLocation" data-icon="" > Hotel Location</form:label>
		                                    <form:input path="hotelLocation" name="hotelLocation"  type="text" placeholder="Hotel Location"/>
		                                    <form:errors path="hotelLocation" cssClass="error" /> 
		                                </p>
		                              </td>
		                              <td>&nbsp;&nbsp;</td>
		                              <td>  
		                                <p> 
		                                    <form:label path="avaliableRooms" class="avaliableRooms" data-icon="u">Available Rooms</form:label>
		                                    <form:input path="avaliableRooms" name="avaliableRooms"   placeholder="eg. X8df!90EO"/>
		                                    <form:errors path="avaliableRooms" cssClass="error" />
		                                </p>
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
	        								<form:errors path="country" cssClass="error" />
	                                   
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
	        								<form:errors path="state" cssClass="error" />
	                                   
		                                
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
                                    		<form:errors path="city" cssClass="error" />
	                                   </p>
	                                </td>
	                                <td>&nbsp;&nbsp;</td>   
         							<td>
		                                <p> 
		                                    <form:label path="zipCode">Zip Code </form:label>
		                                    <form:input path="zipCode" name="zipCode"   placeholder="eg. 110011"/>
		                                    <form:errors path="zipCode" cssClass="error" />
		                                </p>
		                            </td>
		                          </tr>
		                        
		                        
		                        <tr>
		                        	<td colspan="3" align="center">        
                                		<p class="signin button"> 
											<input type="submit" value="Add Hotel"/> 
									</p>
									</td>
								</tr>	
                            </form:form>
                        </div>
						</table>
						</center>
                    </div>
            </section>
        </div>
    </body>
</html>