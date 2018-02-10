package com.company.genSmart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.genSmart.model.EmployeeJPA;
import com.company.genSmart.model.PayrollJPA;
import com.company.genSmart.repository.PayrollJpaRepository;

@Service
public class PayrollService {
	
	@Autowired
	private PayrollJpaRepository payrollJpaRepo;
	
	
	public PayrollJPA getEmployeesPay(EmployeeJPA employee){
		return payrollJpaRepo.findByEmployee(employee);
	}
	
	public List<PayrollJPA> getAllPayrolls(){
		return payrollJpaRepo.findAll();
	}

}
