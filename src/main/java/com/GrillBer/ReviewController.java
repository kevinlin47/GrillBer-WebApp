package com.GrillBer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
	
	@RequestMapping(value="/ReviewPage",method=RequestMethod.GET)
	public String displayReviewPage()
	{
		return "ReviewPage";
	}
}
