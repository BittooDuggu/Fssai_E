package com.ir.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AssessmentAgencyController {
	
	@RequestMapping(value="/assessmentAgencyHomepage" , method=RequestMethod.GET)
	public String assessmentAgencyHomepage(){
		return "assessmentAgencyHomepage";
	}
	
}
