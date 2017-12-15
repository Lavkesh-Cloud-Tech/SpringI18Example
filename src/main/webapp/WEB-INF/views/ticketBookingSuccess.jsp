<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="label.ticketBookingSuccessTitle" /></title>
<style>
	* {
		margin: 0 auto;
	}
	
	.header {
		background-color: #c4d79b;
		padding-top: 10px;
		padding-bottom: 10px;
		text-align: center;
		color: #74a2c5;  
	}
	
	.form {
		background-color: lightyellow; 
	}
	
	.language{
		text-align: right;
		padding-right: 20px;
	}
</style>
</head>
<body>
	<div>
		<div class="header">
			<h2><spring:message code="label.ticketBookingSuccessHeader" /></h2>
		</div>
		
		<div class="form">
		
			<div class="language">
				<a href="?locale=en"><span>English</span></a> | <a href="?locale=fr"><span>French</span></a>
			</div>
			
			<div>
				<table cellpadding="10">
					<tr>
						<td>
							<strong><span><spring:message code="label.customerName" /></span></strong>
						</td>
						
						<td>
							<span>${ticketBooking.customerName}</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.numberOfTicket" /></span></strong>
						</td>
						
						<td>
							<span>${ticketBooking.numberOfTicket}</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.phone" /></span></strong>
						</td>
						
						<td>
							<span>${ticketBooking.phone}</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.email" /></span></strong>
						</td>
						
						<td>
							<span>${ticketBooking.email}</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.dateOfJourney" /></span></strong>
						</td>
						
						<td>
							<span><fmt:formatDate pattern="dd/MM/yyyy" value="${ticketBooking.dateOfJourney}" /></span>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.snacks" /></span></strong>
						</td>
						
						<td>
							<c:if test="${ticketBooking.snacks eq 'Y'}">
								<span><spring:message code="label.yes" /></span>
							</c:if>
							<c:if test="${ticketBooking.snacks eq 'N'}">
								<span><spring:message code="label.no" /></span>
							</c:if>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.bookingClass" /></span></strong>
						</td>
						
						<td>
							<span>${ticketBooking.bookingClass}</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.cardNumber" /></span></strong>
						</td>
						
						<td>
							<span>${ticketBooking.cardNumber}</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<strong><span><spring:message code="label.cardPin" /></span></strong>
						</td>
						
						<td>
							<span>${ticketBooking.cardPin}</span>
						</td>
					</tr>			
				</table>
			</div>			
		</div>
	</div>
</body>
</html>
