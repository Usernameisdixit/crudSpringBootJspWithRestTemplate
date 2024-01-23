package com.csm.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.csm.demo.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
	

}
