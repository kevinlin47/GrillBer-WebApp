package com.GrillBer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping(value="/GrillBer", method=RequestMethod.GET)
	public String displayWelcomePage()
	{
		return "WelcomePage";
	}
	/*
	@RequestMapping(value="/GrillBer",method=RequestMethod.POST)
	public String displayCorrespondingPage(@RequestParam String pageName,ModelMap model)
	{
		return pageName;
	}*/
}
