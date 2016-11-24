package com.ir.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ir.form.ContactTrainee;
import com.ir.form.CourseEnrolledUserForm;
import com.ir.form.RegistrationFormTrainee;
import com.ir.model.CourseName;
import com.ir.model.LoginDetails;
import com.ir.model.State;
import com.ir.model.TrainingPartner;
import com.ir.service.TraineeService;

@Controller
@SessionAttributes
public class TraineeController {
	
	@Autowired
	@Qualifier("traineeService")
	public TraineeService traineeService;
	
	@RequestMapping(value="/contactTrainee" , method=RequestMethod.GET)
	public String contactTrainee(@ModelAttribute("contactTrainee") ContactTrainee contactTrainee ){
		return "contactTrainee";
	}
	
	@RequestMapping(value="/basic" , method=RequestMethod.GET)
	public String basic(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "basic";
	}
	
	@RequestMapping(value="/advance" , method=RequestMethod.GET)
	public String advance(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "advance";
	}
	
	@RequestMapping(value="/special" , method=RequestMethod.GET)
	public String special(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "special";
	}
	

	@RequestMapping(value="/index" , method=RequestMethod.GET)
	public String firstlogin(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "firstlogin";
	}
	
	/*@RequestMapping(value="/contact" , method=RequestMethod.GET)
	public String contact(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "contact";
	}*/
	
	@RequestMapping(value="/second-time-login" , method=RequestMethod.GET)
	public String secondtimelogin(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "second-time-login";
	}
	
	@RequestMapping(value="/assessmentInstructions" , method=RequestMethod.GET)
	public String assessmentinstructions(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "assessment-instructions";
	}
	
	@RequestMapping(value="/feedbackForm" , method=RequestMethod.GET)
	public String feedbackbackupform(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "feedback-backup-form";
	}

	@RequestMapping(value="/generateAdmitCard" , method=RequestMethod.GET)
	public String generateadmitcard(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "generate-admit-card";
	}
	
	@RequestMapping(value="/generateCertificate" , method=RequestMethod.GET)
	public String generatecertificate(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "generate-certificate";
	}
	
	@RequestMapping(value="/course-Training" , method=RequestMethod.GET)
	public String training(@ModelAttribute("basicTrainee") CourseEnrolledUserForm courseEnrolledUserForm ,
			@ModelAttribute("state") State state , @ModelAttribute("tp") TrainingPartner tp ){
		return "training";
	}
	
	@RequestMapping(value="/contactTrainee1" , method=RequestMethod.POST)
	public String contactTrainee1(@ModelAttribute("contactTrainee") ContactTrainee contactTrainee
			,BindingResult result , Model model
			){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "contactTrainee";
		}
		String contactTraineeSave = traineeService.contactTraineeSave(contactTrainee);
		return "contactTrainee";
	}
	
	@ModelAttribute("courseNameList")
	public List<CourseName> courseNameList(){
		List<CourseName> courseNameList = traineeService.courseNameList();
		System.out.println("course name list   :   "+ courseNameList);
		return courseNameList;
	}
	@ModelAttribute("trainingPartnerList")
	public List<TrainingPartner> trainingPartnerList(){
		List<TrainingPartner> trainingPartnerList = traineeService.trainingPartnerList();
		System.out.println("training partner name list   :   "+ trainingPartnerList);
		return trainingPartnerList;
	}
	@ModelAttribute("trainingCenterStateList")
	public List<State> trainingCenterStateList(){
		List<State> trainingCenterStateList = traineeService.trainingCenterStateList();
		System.out.println("training partner state list   :   "+ trainingCenterStateList);
		return trainingCenterStateList;
		//return null;
	}
	@RequestMapping(value="/updateInformation" , method=RequestMethod.GET)
	public String updateInformation(@ModelAttribute("updateInformation") RegistrationFormTrainee registrationFormTrainee, HttpSession session ){		
		Integer ss = (Integer)session.getAttribute("loginUser1");
		System.out.println("nnb   " +ss);
		System.out.println(registrationFormTrainee.getBusinessAddressLine2());
		return "updateInformation";
	}
	@RequestMapping(value="/updateTrainee" , method=RequestMethod.POST)
	public String updateTrainee(@ModelAttribute("updateInformation") RegistrationFormTrainee registrationFormTrainee , HttpSession session ){
		Integer ss = (Integer)session.getAttribute("loginUser1");
		System.out.println("nnb   " +ss);
		String updateTrainee = traineeService.updateTrainee(registrationFormTrainee , ss);
		
		return "updateInformation";
	}
	
}
