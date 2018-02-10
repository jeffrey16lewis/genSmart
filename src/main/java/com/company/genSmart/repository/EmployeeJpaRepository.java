package com.company.genSmart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.genSmart.model.EmployeeJPA;

public interface EmployeeJpaRepository extends JpaRepository<EmployeeJPA, Long> {

}
