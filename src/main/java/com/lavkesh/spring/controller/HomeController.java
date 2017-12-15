package com.lavkesh.spring.controller;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lavkesh.spring.model.TicketBooking;
import com.lavkesh.spring.validator.TikcetBookingFormValidator;

/**
 * Handles requests for the application home page.
 */
@Controller
@ControllerAdvice
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private TikcetBookingFormValidator tikcetBookingFormValidator;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return new ModelAndView("home", "ticketBooking", new TicketBooking());
	}
	
	@ModelAttribute
    public void addAttributes(final Model model) {
		Map<String,String> bookingClass = new LinkedHashMap<String,String>();
		bookingClass.put("Balcony", "Balcony");
		bookingClass.put("FC", "First Class");
		bookingClass.put("SC", "Second Class");
        model.addAttribute("bookingClassList", bookingClass);
    }
	
	@RequestMapping(value = "/bookTicket", method = RequestMethod.POST)
	public ModelAndView bookTicket(@Valid @ModelAttribute("ticketBooking") TicketBooking ticketBooking, BindingResult bindingResult, Model model, HttpServletRequest request) {
		
		tikcetBookingFormValidator.validate(ticketBooking, bindingResult);
		
		if (bindingResult.hasErrors()) {
			logger.info("Returning home.jsp page");
			return new ModelAndView("home");
		}
		
		request.getSession().setAttribute("ticketBooking", ticketBooking);
		
		return new ModelAndView("redirect:/ticketBookingSuccess");
	}
	
	@RequestMapping(value = "/bookTicket", method = RequestMethod.GET)
	public String bookTicket(Model model) {
		return "redirect:/";
	}
	
	@RequestMapping(value = "/ticketBookingSuccess", method = RequestMethod.GET)
	public String ticketBookingSuccess(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		Object attribute = session.getAttribute("ticketBooking");
		if(attribute != null) {
			model.addAttribute("ticketBooking", attribute);
		}
		
		return "ticketBookingSuccess";
	}
}
