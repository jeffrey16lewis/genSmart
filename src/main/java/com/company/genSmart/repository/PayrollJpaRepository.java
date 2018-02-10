package com.company.genSmart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.genSmart.model.EmployeeJPA;
import com.company.genSmart.model.PayrollJPA;

public interface PayrollJpaRepository extends JpaRepository<PayrollJPA,Long> {
	
	PayrollJPA findByEmployee(EmployeeJPA employee);

}
