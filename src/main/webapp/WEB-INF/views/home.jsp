<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="label.title" /></title>
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
	
	.error {
		color: #ff0000;
	}
</style>
</head>
<body>
	<div>
		<div class="header">
			<h2><spring:message code="label.header" /></h2>
		</div>
		
		<div class="form">
		
			<div class="language">
				<a href="?locale=en"><span>English</span></a> | <a href="?locale=fr"><span>French</span></a>
			</div>
			
			<div>
				<form:form method="POST" action="/spring/bookTicket" modelAttribute="ticketBooking">
					<table cellpadding="10">
						<tr>
							<td>
								<form:label path="customerName">
									<spring:message code="label.customerName" />
								</form:label>
							</td>
							
							<td>
								<form:input path="customerName"/>
							</td>
							
							<td>
								<form:errors path="customerName" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="numberOfTicket">
									<spring:message code="label.numberOfTicket" />
								</form:label>
							</td>
							
							<td>
								<form:input path="numberOfTicket" type="number"/>
							</td>
							
							<td>
								<form:errors path="numberOfTicket" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="phone">
									<spring:message code="label.phone" />
								</form:label>
							</td>
							
							<td>
								<form:input path="phone"/>
							</td>
							
							<td>
								<form:errors path="phone" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="email">
									<spring:message code="label.email" />
								</form:label>
							</td>
							
							<td>
								<form:input path="email" type="email"/>
							</td>
							
							<td>
								<form:errors path="email" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="dateOfJourney">
									<spring:message code="label.dateOfJourney" />
								</form:label>
							</td>
							
							<td>
								<form:input path="dateOfJourney" type="date"/>
							</td>
							
							<td>
								<form:errors path="dateOfJourney" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="snacks">
									<spring:message code="label.snacks" />
								</form:label>
							</td>
							
							<td>
								<form:radiobutton path="snacks" value="Y"/>&nbsp;<spring:message code="label.yes" />
								<form:radiobutton path="snacks" value="N"/>&nbsp;<spring:message code="label.no" />
							</td>
							
							<td>
								<form:errors path="snacks" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="bookingClass">
									<spring:message code="label.bookingClass" />
								</form:label>
							</td>
							
							<td>
								<form:select path="bookingClass">
								   <form:option value="" label="--- Select ---"/>
								   <form:options items="${bookingClassList}" />
								</form:select>
							</td>
							
							<td>
								<form:errors path="bookingClass" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="cardNumber">
									<spring:message code="label.cardNumber" />
								</form:label>
							</td>
							
							<td>
								<form:input path="cardNumber"/>
							</td>
							
							<td>
								<form:errors path="cardNumber" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td>
								<form:label path="cardPin">
									<spring:message code="label.cardPin" />
								</form:label>
							</td>
							
							<td>
								<form:input path="cardPin"/>
							</td>
							
							<td>
								<form:errors path="cardPin" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<td colspan="2">
								<form:checkbox path="acceptTermAndCondition" value="Y"/>
								<spring:message code="label.acceptTermAndCondition" />
							</td>
							
							<td>
								<form:errors path="acceptTermAndCondition" cssClass="error" />
							</td>
						</tr>
						
						<tr>
							<spring:message code="label.bookTicket" var="labelBookTicket"></spring:message>
							<spring:message code="label.cancel" var="labelCancel"></spring:message>
							<td><input type="submit" value="${labelBookTicket}" /></td>
							<td><input type="button" value="${labelCancel}" /></td>
						</tr>			
					</table>
				</form:form>
			</div>			
		</div>
	</div>
</body>
</html>
