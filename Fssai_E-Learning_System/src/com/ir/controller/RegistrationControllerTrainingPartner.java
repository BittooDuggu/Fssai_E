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
import com.ir.form.RegistrationFormTrainingPartner;
import com.ir.model.CourseName;
import com.ir.model.ManageTrainingPartner;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.model.TrainingPartner;
import com.ir.service.PageLoadServiceTrainer;
import com.ir.service.RegistrationServiceTrainer;
import com.ir.service.RegistrationServiceTrainingPartner;

@Controller
@SessionAttributes
public class RegistrationControllerTrainingPartner implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Autowired
	@Qualifier("registrationServiceTrainingPartner")
	RegistrationServiceTrainingPartner registrationServiceTrainingPartner;
	
	
	@ModelAttribute("stateList")
	public List<State> populateStateList() {
		List<State> stateList = registrationServiceTrainingPartner.loadState();
		System.out.println("state list   :   "+ stateList);
		return stateList;
	}
	@ModelAttribute("trainingCenterList")
	public List<ManageTrainingPartner> trainingCenterList() {
		List<ManageTrainingPartner> trainingCenterList = registrationServiceTrainingPartner.trainingCenterList();
		System.out.println("training Center List    :   "+ trainingCenterList);
		if(trainingCenterList != null &&  trainingCenterList.size() > 0){
			return trainingCenterList;
		}else{
			return trainingCenterList;
		}

	}
	
	@ModelAttribute("titleList")
	public List<Title> populateTitle() {
		List<Title> titleList = registrationServiceTrainingPartner.loadTitle();
		System.out.println("state list   :   "+ titleList);
		return titleList;
	}
	
	
	
	@ModelAttribute("basicCourseList" )
	public List<CourseName> basicCourseList() {
		List<CourseName> basicCourseList = registrationServiceTrainingPartner.basicCourseName();
		System.out.println("CourseName  list   :   "+ basicCourseList);
		return basicCourseList;
	}
	
	@ModelAttribute("trainingPartnerNameList" )
	public List<ManageTrainingPartner> trainingPartnerNameList() {
		List<ManageTrainingPartner> trainingPartnerNameList = registrationServiceTrainingPartner.trainingPartnerNameList();
		return trainingPartnerNameList;
	}
	
	@RequestMapping(value = "/registrationFormTrainingPartner", method = RequestMethod.GET)
	public String registerForm(Model model) {
		System.out.println("registerForm training partner begins ");
		RegistrationFormTrainingPartner registrationFormTrainingPartner=new RegistrationFormTrainingPartner();
		model.addAttribute("registrationFormTrainingPartner", registrationFormTrainingPartner);
		return "registrationFormTrainingPartner";
	}
	
	@RequestMapping(value = "/registrationTrainingPartner", method = RequestMethod.POST)
	public String registerTrainer(@Valid @ModelAttribute("registrationFormTrainingPartner") RegistrationFormTrainingPartner registrationFormTrainingPartner, BindingResult bindingResult,Model model)  {
		
		System.out.println("register controller before bind trainer");
		if(bindingResult.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+bindingResult.hasErrors());
			System.out.println(bindingResult.getErrorCount());
			System.out.println(bindingResult.getAllErrors());
			return "registrationFormTrainingPartner";
		}
		String personalInformationTrainingPartner = registrationServiceTrainingPartner.registerPersonalInformationTrainingPartner(registrationFormTrainingPartner);
		if(personalInformationTrainingPartner.equalsIgnoreCase("created")){
			model.addAttribute("created" , "Registration done successfully");
			return "welcome";
		}else{
			model.addAttribute("created" , "Oops , Something went wrong !!!");
			return "registrationFormTrainingPartner";
		}
	}
}