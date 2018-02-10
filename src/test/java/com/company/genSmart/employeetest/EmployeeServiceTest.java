package com.company.genSmart.employeetest;


import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.doNothing;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.company.genSmart.model.EmployeeJPA;
import com.company.genSmart.repository.EmployeeJpaRepository;
import com.company.genSmart.service.EmployeeJpaService;

public class EmployeeServiceTest {
	
	@Mock
	private EmployeeJpaRepository employeeRepo;
	
	@Mock
	private EmployeeJPA employee;
	
	@Mock
	private List<EmployeeJPA> employees;
	
	@InjectMocks
	private EmployeeJpaService employeeService;

	
	@Before
	public void intitMock() {
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void getAllEmployeesTest() {
		
		when(employeeRepo.findAll()).thenReturn(employees);
		
		List<EmployeeJPA> returnedEmployees = employeeService.getEmployees();
		
		assertThat(returnedEmployees, is(equalTo(employees)));
	}
	
	@Test
	public void createEmployeeTest() {
		
		when(employeeRepo.save(employee)).thenReturn(employee);
		
		employeeService.createEmployee(employee);
		
		verify(employeeRepo, times(1)).save(employee);
	}
	
	@Test
	public void getEmployeeTest() {
		when(employeeRepo.getOne(1L)).thenReturn(employee);
		
		EmployeeJPA returnedEmployee = employeeService.getEmployee(1L);
		
		assertThat(returnedEmployee, is(equalTo(employee)));
	}
	
	@Test
	public void deleteEmployeeTest() {
		doNothing().when(employeeRepo).delete(1L);
		
		employeeService.deleteEmployee(1L);
		
		verify(employeeRepo, times(1)).delete(1L);
	}

}
