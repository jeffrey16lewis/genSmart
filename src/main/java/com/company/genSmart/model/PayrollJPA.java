package com.company.genSmart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class PayrollJPA {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private double hoursWorked;
	private double hourlyPay;
	private double weeklyTotalPay = hoursWorked * hourlyPay;
	@OneToOne
	private EmployeeJPA employee;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public double getHoursWorked() {
		return hoursWorked;
	}
	public void setHoursWorked(double hoursWorked) {
		this.hoursWorked = hoursWorked;
	}
	public double getHourlyPay() {
		return hourlyPay;
	}
	public void setHourlyPay(double hourlyPay) {
		this.hourlyPay = hourlyPay;
	}
	public EmployeeJPA getEmployee() {
		return employee;
	}
	public void setEmployee(EmployeeJPA employee) {
		this.employee = employee;
	}
	public double getWeeklyTotalPay() {
		return weeklyTotalPay;
	}
	
}
