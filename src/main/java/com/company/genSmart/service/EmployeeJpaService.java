package com.company.genSmart.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.genSmart.model.EmployeeJPA;
import com.company.genSmart.repository.EmployeeJpaRepository;

@Service
@Transactional
public class EmployeeJpaService {

	@Autowired
	private EmployeeJpaRepository employeeRepo;

	public List<EmployeeJPA> getEmployees() {
		return employeeRepo.findAll();
	}

	public void createEmployee(EmployeeJPA employee) {
		employeeRepo.save(employee);
	}
	
	public EmployeeJPA getEmployee(Long id) {
		return employeeRepo.getOne(id);
	}

	public void deleteEmployee(Long id) {
		employeeRepo.delete(id);;
		
	}
	
	public void updatePerson(EmployeeJPA employee) {
		employeeRepo.saveAndFlush(employee);
	}

}
