package com.salesken.studentreport.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.salesken.studentreport.entity.Marks;
import com.salesken.studentreport.entity.Student;

public interface MarksRepository extends JpaRepository<Marks, Long> {

}
