package com.GrillBer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RentController {
	
	@RequestMapping(value="/RentPage", method=RequestMethod.GET)
	public String showRentPage()
	{
		return "RentPage";
	}
	
	@RequestMapping(value="/RentPage", method=RequestMethod.POST)
	public String goToCheckOut()
	{
		return "WelcomePage";
	}
}
