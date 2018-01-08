package com.GrillBer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value="/GrillBer")
	public String displayWelcomePage()
	{
		return "WelcomePage";
	}
}
