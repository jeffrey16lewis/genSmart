package com.company.genSmart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.genSmart.model.JobApplicationJPA;
import com.company.genSmart.repository.JobApplicationJpaRepository;

@Service
public class JobApplicationService {
	
	@Autowired
	private JobApplicationJpaRepository jobAppRepo;
	
	public List<JobApplicationJPA> getApplicants(){
		return jobAppRepo.findAll();
	}
	
	public JobApplicationJPA getApplicant(Long id) {
		return jobAppRepo.findOne(id);
	}
	
	public void savaApplication(JobApplicationJPA application) {
		jobAppRepo.save(application);
	}
	
	public void deleteApplication(Long id) {
		jobAppRepo.delete(id);
	}
	
	public void updateApplication(JobApplicationJPA application) {
		jobAppRepo.save(application);
	}
		

}
