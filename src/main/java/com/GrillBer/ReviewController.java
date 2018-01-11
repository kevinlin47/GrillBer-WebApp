package com.GrillBer;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReviewController {
	
	@RequestMapping(value="/ReviewPage",method=RequestMethod.GET)
	public String displayReviewPage()
	{
		return "ReviewPage";
	}
	
	@RequestMapping(value="/ReviewPage",method=RequestMethod.POST)
	public String updateRating(@RequestParam String rating)
	{	
		ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");
		ReviewTemplateJDBC reviewTemplateJDBC=(ReviewTemplateJDBC)context.getBean("reviewTemplateJDBC");
		reviewTemplateJDBC.update(Integer.parseInt(rating));
		
		return "WelcomePage";
	}
}
