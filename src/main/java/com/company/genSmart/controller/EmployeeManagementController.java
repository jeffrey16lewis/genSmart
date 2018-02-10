package com.company.genSmart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.company.genSmart.model.EmployeeJPA;
import com.company.genSmart.service.EmployeeJpaService;

@RestController
public class EmployeeManagementController {
	
	@Autowired
	private EmployeeJpaService employeeService;
	
	
	@GetMapping("/home")
	public ModelAndView home() {
		
		return new ModelAndView("home","employee",new EmployeeJPA());
	}
	
	@GetMapping("/create")
	public ModelAndView showForm() {
		return new  ModelAndView("create", "employee", new EmployeeJPA());
	}
	

	@RequestMapping(value = "/addEmployee", method=RequestMethod.POST)
	public ModelAndView addEmployee(@RequestParam("fname") String fname, 
			@RequestParam("lname") String lname, @RequestParam("gender") String gender,
			@RequestParam("streetAddress") String streetAddress, @RequestParam("city") String city,
			@RequestParam("state") String state, @RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("zipCode") String zipCode, ModelMap model, EmployeeJPA employee) throws Exception {
		
		employee.setFname(fname);
		employee.setLname(lname);
		employee.setGender(gender);
		employee.setStreetAddress(streetAddress);
		employee.setCity(city);
		employee.setState(state);
		employee.setZipCode(zipCode);
		employee.setPhoneNumber(phoneNumber);
		
		
		employeeService.createEmployee(employee);
		
		return new ModelAndView("redirect:" + "/manage");
	}
	
	@GetMapping("/manage")
	public ModelAndView manageEmployees(Model model ) {
		
		List<EmployeeJPA> returnedEmployees = employeeService.getEmployees();
		model.addAttribute("employees", returnedEmployees);
		
		return new ModelAndView("manage", "employees", returnedEmployees);
	}
	
	@GetMapping("/manage/{id}")
	public ModelAndView getEmployee(@PathVariable("id") Long id, Model model) {
		
		EmployeeJPA employee = employeeService.getEmployee(id);
		System.out.println(employee.getFname() + " " + employee.getLname());
		model.addAttribute("employee", employee);
		
		return new ModelAndView("details","employee", employee);
	}
	
	@RequestMapping(value="/delete-person/{id}", method=RequestMethod.GET)
	public ModelAndView deleteEmployee(@PathVariable("id")Long id) {
		
		employeeService.deleteEmployee(id);
		
		return new ModelAndView("redirect:" + "/manage");
	}
}
