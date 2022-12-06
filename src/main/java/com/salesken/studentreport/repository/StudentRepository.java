package com.salesken.studentreport.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.salesken.studentreport.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
