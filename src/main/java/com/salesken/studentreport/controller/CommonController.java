package com.salesken.studentreport.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.salesken.studentreport.constants.AppConstants;
import com.salesken.studentreport.entity.Marks;
import com.salesken.studentreport.entity.Student;
import com.salesken.studentreport.service.CommonService;

@Controller
public class CommonController {
	
	@Autowired
	private CommonService service;

	@RequestMapping(value= AppConstants.FORWORD_SLASH)
	public String addStudent() {
		return AppConstants.ADMIN_LOGIN_MAP;
	}
	
	@RequestMapping(value= AppConstants.ADMIN_LOGIN)
	public String homePage() {
		return AppConstants.ADD_STUDENT;
	}
	
	@PostMapping(value= AppConstants.ADD_STUDENT_MAPPING)
	public String saveStudent(Student student) {
		
		service.saveStudent(student);
		return AppConstants.ADD_STUDENT;
	}
	
	@RequestMapping(value= AppConstants.VIEW_STUDENT_MAPPING)
	public String viewStudent(Model model) {
		 List<Student> studentList = service.findAll();
		 model.addAttribute("students",studentList);
		return AppConstants.VIWE_STUDENT;
	}
	
	
	@RequestMapping(value= AppConstants.ADD_STUDENT_MARK)
	public String addMark() {
		return AppConstants.ADD_MARKS;
	}
	
	@PostMapping(value= AppConstants.SAVE_STUDNT_MARK)
	public String saveMark(Marks mark) {
		Long total = (mark.getEnglish()+mark.getMaths()+mark.getScience());
		mark.setTotal(total);
		mark.setAverage((double) (total/3));
		service.saveMarks(mark);
		return AppConstants.ADD_MARKS;
	}
	
	
	
	@RequestMapping(value= AppConstants.VIEW_STUDENT_MARK)
	public String showMark(Model model) {
		 List<Marks> markList = service.findAllMark();
		 model.addAttribute("marks",markList);
		return AppConstants.VIEW_MARKS;
	}
	
	@RequestMapping(value=AppConstants.AVG_PERCENT_OF_CLASS)
	public String avgPercentageOfClass(ModelMap model) {
		double classAvg = service.findClassAvg();
		model.addAttribute("avgOfClass", classAvg);
		return AppConstants.VIEW_MARKS;
		
	}
	
	
}
