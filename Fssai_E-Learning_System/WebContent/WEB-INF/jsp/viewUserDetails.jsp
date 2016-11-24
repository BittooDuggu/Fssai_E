<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script>

function generateAdharCard(){
	
	alert("generateAdharCard");
	var userId=document.getElementById("userId").innerHTML;
	alert(userId);
	document.forms["form1"].action="generateAdharCardDetails.html?userId="+userId;
	document.forms["form1"].submit();

}
</script>

<div style="margin-left: 200px;width: 85%">
	<ul class="breadcrumb">
		<li><a href="#">Home</a> <span class="divider">/</span></li>
		<li><a href="#">Dashboard</a></li>
	</ul>
</div>
<div class="sortable row-fluid"
	style="margin-left: 200px; height: 300px;">
	<a data-rel="tooltip" title="6 new members."
		class="well span3 top-block" href="#"> <span
		class="icon32 icon-red icon-user"></span>
		<div>Total Members</div>
		<div>507</div> <span class="notification">6</span>
	</a> <a data-rel="tooltip" title="4 new pro members."
		class="well span3 top-block" href="#"> <span
		class="icon32 icon-color icon-star-on"></span>
		<div>Pro Members</div>
		<div>228</div> <span class="notification green">4</span>
	</a> <a data-rel="tooltip" title="$34 new sales."
		class="well span3 top-block" href="#"> <span
		class="icon32 icon-color icon-cart"></span>
		<div>Sales</div>
		<div>$13320</div> <span class="notification yellow">$34</span>
	</a> <br>

	<div class="row-fluid" style="width: 85%">
		<div class="box span12">
			<div class="box-header well">
				<h2>
					<i class="icon-info-sign"></i> Introduction
				</h2>
				<div class="box-icon">
					<a href="#" class="btn btn-setting btn-round"><i
						class="icon-cog"></i></a> <a href="#"
						class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
					<a href="#" class="btn btn-close btn-round"><i
						class="icon-remove"></i></a>
				</div>
			</div>
			
						<div class="box-content">
					<table
						class="table table-striped table-bordered bootstrap-datatable datatable" style="width: 70%;margin-left: 10%">
						<tr>
							<td class="center" align="center" colspan="1">
								<center>
										<h3>USER PROFILE</h3>
								</center>
							</td>
					</table>		
				

				<div class="box-content">
					<center><font color="red"><b><s:actionerror /></b></font> <font color="Blue"><b><s:actionmessage /></b></font></center>
					 <form  action="generateAdharCardDetails.html" name="form1" method="post" autocomplete="on" >
					<table
						class="table table-striped table-bordered bootstrap-datatable datatable" style="width: 70%;margin-left: 10%">
						<thead>
							<tr align="center">
								<td align="center" colspan="2" style="width: 100%">PERSONAL INFORMATION</td>
							</tr>
							

							<tr>
								<td style="width: 50%">FIRST NAME</td>
								<td><c:out value="${user.firstname}" />
								</td>
							</tr>
							<tr>
								<td>LAST NAME</td>
								<td><c:out value="${user.lastname}" /></td>
							</tr>
							<tr>
								<td>EMAIL ID</td>
								<td><span id="userId"><c:out value="${user.emailid}" /></span></td>
							</tr>
							
							<tr>
								<td>MOBILE NO</td>
								<td><c:out value="${user.mobileno}" /></td>
							</tr>
							
							<tr>
								<td>STATUS</td>
								<td><c:out value="${user.status}" /></td>
							</tr>
							
							<tr>
								<td>ADHAR CARD NO</td>
								<td><c:out value="${user.adharcardno}" /></td>
							</tr>
						
							<tr>
								<td colspan="2" style="width: 100%">ADDRESS INFORMATION</td>
							</tr>
							
							<tr>
								<td>COUNTRY</td>
								<td><c:out value="${user.address.country}" /></td>
							</tr>
							<tr>
								<td>STATE</td>
								<td><c:out value="${user.address.state}" /></td>
							</tr>
							
							<tr>
								<td>CITY</td>
								<td><c:out value="${user.address.city}" /></td>
							</tr>
							
							<tr>
								<td>ADDRESS LINE 1</td>
								<td><c:out value="${user.address.addressline1}" /></td>
							</tr>
							
							<tr>
								<td>ADDRESS LINE 2</td>
								<td><c:out value="${user.address.addressline2}" /></td>
							</tr>

							<tr>
								<td>ZIP CODE</td>
								<td><c:out value="${user.address.zipcode1}" /></td>
							</tr>
						

						</thead>
					</table>


					<table
						class="table table-striped table-bordered bootstrap-datatable datatable" style="width: 70%;margin-left: 10%">
						<tr>
							<td class="center" align="center" colspan="1">
								<center>
								<c:if test="${user.adharcardno == null}">
					 				<input type="button" value="GENERATE ADHAR CARD"
										onclick="generateAdharCard();"
										style="width: 170px; height: 35px; border: medium none; background-color: #3C97CE; color: white"
										tabindex="0">
									</c:if>
					 			</center>
							</td>
					</table>
			</form>
		
				</div>
				
			
			</div>

		</div>
	</div>





</div>




<div class="sortable row-fluid" style="margin-left: 200px;"></div>
