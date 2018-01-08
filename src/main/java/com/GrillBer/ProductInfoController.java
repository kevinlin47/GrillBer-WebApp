package com.GrillBer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductInfoController {
	
	@RequestMapping(value="/InfoPage",method=RequestMethod.GET)
	public String displayInfoPage()
	{
		return "InfoPage";
	}
	
}
