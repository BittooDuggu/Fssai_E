<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


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
				<form action="" name="form1" method="post">
				<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Hotel Name</th>
								  <th>Location</th>
								  <th>Available Room</th>
								  <th>Hotel Type</th>
								  <th>Country</th>
								  <th>State</th>
								  <th>City</th>
								  <th>Zip Code</th>
								  <th>Action</th>	  
							  </tr>
						  </thead>   
						  <tbody>
						 <c:forEach var="hotel" items="${hotel}" >
							<tr>
								<td><c:out value="${hotel.hotelName}"/></td>
								<td class="center"><c:out value="${hotel.hotelLocation}" /></td>
								<td class="center"><c:out value="${hotel.avaliableRooms}" /></td>
								<td class="center"><c:out value="${hotel.hotelType}" /></td>
								<td class="center"><c:out value="${hotel.country}" /></td>
								<td class="center"><c:out value="${hotel.state}" /></td>
								<td class="center"><c:out value="${hotel.city}" /></td>
								<td class="center"><c:out value="${hotel.zipCode}" /></td>
								
								<td class="center">
									<a class="btn btn-success" href="viewUserDetails.html?userId=<c:out value="${user.emailid}" />">
										<i class="icon-zoom-in icon-white"></i>  
										View                                            
									</a>
									<a class="btn btn-info" href="editUserDetails.html?userId=<c:out value="${user.emailid}" />" >
										<i class="icon-edit icon-white"></i>  
										Edit                                            
									</a>
									<a class="btn btn-danger" href="#" onclick="deleteUser('<c:out value="${user.emailid}" />')">
										<i class="icon-trash icon-white"></i> 
										Delete
									</a>
								</td>
							</tr>
						</c:forEach>
				
						</tbody>
					</table>
					
				</div>
				
				<div class="box-content">
				<a href="downloadHotelPDF.html" style="width: 150px;height: 50px;background-color: lightblue;">Download Hotels Details</a>
				</div>
			
			</div>

		</div>
	</div>





</div>




<div class="sortable row-fluid" style="margin-left: 200px;"></div>
