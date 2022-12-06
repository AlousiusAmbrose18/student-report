package com.salesken.studentreport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.salesken.studentreport.entity.Marks;
import com.salesken.studentreport.entity.Student;
import com.salesken.studentreport.repository.MarksRepository;
import com.salesken.studentreport.repository.StudentRepository;

@Service
public class CommonService {

	@Autowired
	private StudentRepository studentRepository;

	@Autowired
	private MarksRepository marksRepository;

	public void saveStudent(Student student) {
		studentRepository.save(student);
	}

	public void saveMarks(Marks marks) {
		marksRepository.save(marks);
	}

	public List<Student> findAll() {
		return studentRepository.findAll();
	}

	public List<Marks> findAllMark() {
		return marksRepository.findAll();
	}

	public double findClassAvg() {
		List<Marks> marks = marksRepository.findAll();
		double avg = 0;
		int count = 0;
		for (Marks mark : marks) {
			if (mark.getSemester() == 1) {
				avg += mark.getAverage();
				count++;
			}
		}
		return avg/count;
	}
}
