package com.ir.controller;

import java.io.Serializable;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.ir.form.RegistrationFormAssessor;
import com.ir.model.AssessmentAgency;
import com.ir.model.CourseName;
import com.ir.model.ManageAssessmentAgency;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.service.PageLoadServiceTrainer;
import com.ir.service.RegistrationServiceAssessor;
import com.ir.service.RegistrationServiceTrainer;

@Controller
@SessionAttributes
public class RegistrationControllerAssessor implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	@Qualifier("registrationServiceAssessor")
	RegistrationServiceAssessor registrationServiceAssessor;
	
	
	@ModelAttribute("stateList")
	public List<State> populateStateList() {
		List<State> stateList = registrationServiceAssessor.loadState();
		System.out.println("state list   :   "+ stateList);
		return stateList;
	}
	
	@ModelAttribute("assessmentAgencyNameList")
	public List<ManageAssessmentAgency> assessmentAgencyNameList() {
		List<ManageAssessmentAgency> assessmentAgencyNameList = registrationServiceAssessor.loadAssessmentAgency();
		System.out.println("assessment Agency Name List    :   "+ assessmentAgencyNameList);
		return assessmentAgencyNameList;
	}
	/*@ModelAttribute("districtList")
	public List<District> districtList() {
		List<District> districtList = pageLoadServiceTrainer.loadDistrict();
		System.out.println("district list   :   "+ districtList);
		return districtList;
	}*/
	/*@ModelAttribute("cityList")
	public List<City> populateCityList() {		
		List<City> cityList=new ArrayList<City>();
		return cityList;
	}*/
	@ModelAttribute("titleList")
	public List<Title> populateTitle() {
		List<Title> titleList = registrationServiceAssessor.loadTitle();
		System.out.println("state list   :   "+ titleList);
		return titleList;
	}
	
	@ModelAttribute("basicCourseList" )
	public List<CourseName> basicCourseList() {
		List<CourseName> basicCourseList = registrationServiceAssessor.basicCourseName();
		System.out.println("CourseName  list   :   "+ basicCourseList);
		return basicCourseList;
	}
	
	@RequestMapping(value = "/registrationFormAssessor", method = RequestMethod.GET)
	public String registerForm(Model model) {
		System.out.println("registerForm trainer begins ");
		RegistrationFormAssessor registrationFormAssessor=new RegistrationFormAssessor();
		model.addAttribute("registrationFormAssessor", registrationFormAssessor);
		return "registrationFormAssessor";
	}
	
	@RequestMapping(value = "/registrationAsssessor", method = RequestMethod.POST)
	public String registerTrainer(@Valid @ModelAttribute("registrationFormAssessor") RegistrationFormAssessor registrationFormAssessor, BindingResult bindingResult,Model model)  {
		
		System.out.println("register controller before bind trainer");
		if(bindingResult.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+bindingResult.hasErrors());
			System.out.println(bindingResult.getErrorCount());
			System.out.println(bindingResult.getAllErrors());
			return "registrationFormAssessor";
		}
		System.out.println("registrationForm assessor controller");
		System.out.println(registrationFormAssessor);
		String personalInformationAssessor = registrationServiceAssessor.registerPersonalInformationAssessor(registrationFormAssessor);
		if(personalInformationAssessor.equalsIgnoreCase("created")){
			
			return "welcome";
		}else{
			return "registrationFormAssessor";
		}
	}
}