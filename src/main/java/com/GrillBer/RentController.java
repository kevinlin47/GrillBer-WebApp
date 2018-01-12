package com.GrillBer;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RentController {
	
	@RequestMapping(value="/RentPage", method=RequestMethod.GET)
	public String showRentPage()
	{
		return "RentPage";
	}
	
	@RequestMapping(value="/RentPage", method=RequestMethod.POST)
	public String goToCheckOut(@RequestParam String firstname,@RequestParam String lastname,@RequestParam String address
	,@RequestParam String grillType,@RequestParam String Hours,@RequestParam String email)
	{	
		Integer hours=Integer.parseInt(Hours);
		
		ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");
		RentJDBCTemplate rentJDBCTemplate=(RentJDBCTemplate) context.getBean("rentJDBCTemplate");
		
		String name=firstname+" "+lastname;
		
		rentJDBCTemplate.createOrder(name, email, address, grillType, hours);
		
		return  "redirect:/GrillBer";
	}
}
