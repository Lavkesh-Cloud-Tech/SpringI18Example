package com.lavkesh.spring.model;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class TicketBooking {

	@NotEmpty
	private String customerName;

	@Min(1)
	@NotNull
	private Integer numberOfTicket;

	@NotEmpty
	private String phone;

	@NotEmpty
	@Email
	private String email;

	@DateTimeFormat(pattern="yyyy-MM-dd")
    @NotNull
	private Date dateOfJourney;

	@NotEmpty
	private String snacks = "Y";

	@NotEmpty
	private String bookingClass;

	@NotEmpty
	private String cardNumber;

	@NotEmpty
	private String cardPin;

	@NotEmpty
	private String acceptTermAndCondition;

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public Integer getNumberOfTicket() {
		return numberOfTicket;
	}

	public void setNumberOfTicket(Integer numberOfTicket) {
		this.numberOfTicket = numberOfTicket;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDateOfJourney() {
		return dateOfJourney;
	}

	public void setDateOfJourney(Date dateOfJourney) {
		this.dateOfJourney = dateOfJourney;
	}

	public String getBookingClass() {
		return bookingClass;
	}

	public void setBookingClass(String bookingClass) {
		this.bookingClass = bookingClass;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getCardPin() {
		return cardPin;
	}

	public void setCardPin(String cardPin) {
		this.cardPin = cardPin;
	}

	public String getSnacks() {
		return snacks;
	}

	public void setSnacks(String snacks) {
		this.snacks = snacks;
	}

	public String getAcceptTermAndCondition() {
		return acceptTermAndCondition;
	}

	public void setAcceptTermAndCondition(String acceptTermAndCondition) {
		this.acceptTermAndCondition = acceptTermAndCondition;
	}

}
