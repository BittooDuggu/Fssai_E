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
import com.ir.form.RegistrationFormTrainer;
import com.ir.model.CourseName;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.service.PageLoadServiceTrainer;
import com.ir.service.RegistrationServiceTrainer;

@Controller
@SessionAttributes
public class RegistrationControllerTrainer implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Autowired
	@Qualifier("pageLoadServiceTrainer")
	PageLoadServiceTrainer pageLoadServiceTrainer;
	
	@Autowired
	@Qualifier("registrationServiceTrainer")
	RegistrationServiceTrainer registrationServiceTrainer;
	
	
	@ModelAttribute("stateList")
	public List<State> populateStateList() {
		List<State> stateList = pageLoadServiceTrainer.loadState();
		System.out.println("state list   :   "+ stateList);
		return stateList;
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
		List<Title> titleList = pageLoadServiceTrainer.loadTitle();
		System.out.println("state list   :   "+ titleList);
		return titleList;
	}
	
	@ModelAttribute("basicCourseList" )
	public List<CourseName> basicCourseList() {
		List<CourseName> basicCourseList = pageLoadServiceTrainer.basicCourseName();
		System.out.println("CourseName  list   :   "+ basicCourseList);
		return basicCourseList;
	}
	
	@RequestMapping(value = "/registrationFormTrainer", method = RequestMethod.GET)
	public String registerForm(Model model) {
		System.out.println("registerForm trainer begins ");
		RegistrationFormTrainer registrationFormTrainer=new RegistrationFormTrainer();
		model.addAttribute("registrationFormTrainer", registrationFormTrainer);
		return "registrationFormTrainer";
	}
	
	@RequestMapping(value = "/registrationTrainer", method = RequestMethod.POST)
	public String registerTrainer(@Valid @ModelAttribute("registrationFormTrainer") RegistrationFormTrainer registrationFormTrainer, BindingResult bindingResult,Model model)  {
		
		System.out.println("register controller before bind trainer");
		if(bindingResult.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+bindingResult.hasErrors());
			System.out.println(bindingResult.getErrorCount());
			System.out.println(bindingResult.getAllErrors());
			return "registrationFormTrainer";
		}
		System.out.println("registrationFormTrainer controller");
		System.out.println(registrationFormTrainer);
		//RegisterTraineeInformationFull registerTraineeInformationFull = registrationServiceTrainee.registerTraineeInformationFull(registrationFormTrainee);
		String personalInformationTrainer = registrationServiceTrainer.registerPersonalInformationTrainer(registrationFormTrainer);
		if(personalInformationTrainer.equalsIgnoreCase("created")){
			return "welcome";
		}else{
			return "registrationFormTrainer";
		}
	}
}