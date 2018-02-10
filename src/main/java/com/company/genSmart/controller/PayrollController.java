package com.company.genSmart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.company.genSmart.model.EmployeeJPA;
import com.company.genSmart.model.PayrollJPA;
import com.company.genSmart.service.EmployeeJpaService;
import com.company.genSmart.service.PayrollService;

@RestController
public class PayrollController {
	
	@Autowired
	private PayrollService payrollService;
	
	@Autowired
	private EmployeeJpaService employeeService;
	
	@GetMapping("/payroll")
	public ModelAndView showPayrollPage() {
		
		return new ModelAndView("payroll");
	}
	
	@GetMapping("/payroll/run")
	public ModelAndView runPayroll(Model model) {
		
		List<EmployeeJPA> employees = employeeService.getEmployees();
		employees.forEach(e -> {
			System.out.println(e.getFname());
		});
		model.addAttribute("employees", employees);
		
		return new ModelAndView("payrollForm","payroll", new PayrollJPA());
	}
	
	@PostMapping("/calculate-payroll")
	public ModelAndView calculatePayroll(@ModelAttribute("payroll") PayrollJPA payroll, Model model) {
		
		
		
		return new ModelAndView("redirect:" + "/manage");
	}
}
