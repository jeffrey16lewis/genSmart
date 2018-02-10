package com.company.genSmart.payrolltest;

import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.when;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.company.genSmart.model.EmployeeJPA;
import com.company.genSmart.model.PayrollJPA;
import com.company.genSmart.repository.PayrollJpaRepository;
import com.company.genSmart.service.PayrollService;

public class PayrollServiceTest {
	
	@Mock
	private PayrollJPA payroll;
	
	@Mock
	private PayrollJpaRepository payrollJpaRepo;
	
	@Mock
	private List<PayrollJPA> payrolls;
	
	@Mock
	private EmployeeJPA employee;
	
	@InjectMocks
	private PayrollService payrollService;
	
	@Before
	public void initMock() {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void getPayrollByEmployeeTest() {
		
		when(payrollJpaRepo.findByEmployee(employee)).thenReturn(payroll);
		
		PayrollJPA returnedPayroll = payrollService.getEmployeesPay(employee);
		
		assertThat(returnedPayroll, is(equalTo(payroll)));
		
	}

}
