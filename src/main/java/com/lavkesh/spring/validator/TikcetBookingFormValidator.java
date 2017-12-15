package com.lavkesh.spring.validator;

import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.lavkesh.spring.model.TicketBooking;

@Component
public class TikcetBookingFormValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return TicketBooking.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		TicketBooking ticketBooking = (TicketBooking) target;
		Date dateOfJourney = ticketBooking.getDateOfJourney();
		if(dateOfJourney != null) {
			Date currentDate = getCurrentDate();
			
			boolean isPastDate = dateOfJourney.compareTo(currentDate) < 0;
			if(isPastDate) {
				errors.rejectValue("dateOfJourney", "past.dateOfJourney");
			}
		}
	}
	
	private Date getCurrentDate() {
		Calendar c1 = Calendar.getInstance();
		c1.set(Calendar.HOUR, 0);
		c1.set(Calendar.MINUTE, 0);
		c1.set(Calendar.SECOND, 0);
		c1.set(Calendar.MILLISECOND, 0);
		return c1.getTime();
	}

}
