package com.company.genSmart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.company.genSmart.service.JobApplicationService;

@RestController
public class JobApplicationController {
	
	@Autowired
	private JobApplicationService jobAppService;
	
	@GetMapping("/application-form")
	public ModelAndView showForm(Model model) {
		
		return new ModelAndView("applicationForm");
	}
	
	

}
