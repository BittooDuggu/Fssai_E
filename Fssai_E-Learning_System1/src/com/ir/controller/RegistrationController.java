package com.ir.controller;


import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.ir.form.RegistrationFormTrainee;
import com.ir.model.City;
import com.ir.model.CourseName;
import com.ir.model.District;
import com.ir.model.KindOfBusiness;
import com.ir.model.State;
import com.ir.model.Title;
import com.ir.service.PageLoadService;
import com.ir.service.RegistrationServiceTrainee;


@Controller
@SessionAttributes
public class RegistrationController {
	
	@Autowired
	@Qualifier("registrationServiceTrainee")
	RegistrationServiceTrainee registrationServiceTrainee;
	
	
	@Autowired
	@Qualifier("pageLoadService")
	PageLoadService pageLoadService;
	
	

	/*@RequestMapping(value = "/userIdCheck", method = RequestMethod.GET)
	public String loginForm(
			@Valid @ModelAttribute("registrationFormTrainee") RegistrationFormTrainee registrationFormTrainee, 
			BindingResult bindingResult,Model model)  {
		System.out.println("Reg Controller  begin . : ");

		String  registerTraineeInformationFull =  registrationServiceTrainee.registerTraineeInformationFullIdCheck(registrationFormTrainee);
		System.out.println("return null****** " + registerTraineeInformationFull);
		return "registrationFormTrainee";
	}*/
	
	
	@RequestMapping(value = "/registrationFormTrainee", method = RequestMethod.GET)
	public String registerForm(Model model) {
		System.out.println("registerForm begins ");
		RegistrationFormTrainee registrationFormTrainee=new RegistrationFormTrainee();
		model.addAttribute("registrationFormTrainee", registrationFormTrainee);
		//int  state =  stateSaveService.stateSave(statelist);
		return "registrationFormTrainee";
	}
	
	@ModelAttribute("stateList")
	public List<State> populateStateList() {
		List<State> stateList = pageLoadService.loadState();
		System.out.println("state list   :   "+ stateList);
		return stateList;
	}
	/*@ModelAttribute("districtList")
	public List<District> districtList() {
		List<District> districtList = pageLoadService.loadDistrict();
		System.out.println("district list   :   "+ districtList);
		return districtList;
	}*/
	
	/*@RequestMapping(value="/loadCity" , method = RequestMethod.GET )
	public @ResponseBody List<City> populateCityList1(){
		int stat=1;
		System.out.println("load city method call and valu pf parameter : "+stat);
		List<City> loadCity = pageLoadService.loadCity(stat);
		return loadCity;
	}*/
	
	/*@ModelAttribute("cityList")
	public List<City> populateCityList() {
		
		List<City> cityList=new ArrayList<City>();
		cityList.add(new City(1, "New Delhi"));
		cityList.add(new City(2, "Gurgaon"));
		cityList.add(new City(3, "Noida"));
		cityList.add(new City(4, "Varanasi"));
		
		return cityList;
	}*/
	
	@ModelAttribute("titleList")
	public List<Title> populateTitle() {
		List<Title> titleList = pageLoadService.loadTitle();
		System.out.println("state list   :   "+ titleList);
		return titleList;
	}
	
	/*@ModelAttribute("courseNameList")
	public List<CourseName> courseNameList() {
		List<CourseName> courseNameList = pageLoadService.loadCourseName();
		System.out.println("CourseName  list   :   "+ courseNameList);
		return courseNameList;
	}*/
	
	@ModelAttribute("kindOfBusinessList")
	public List<KindOfBusiness> populateKindOfBusiness() {
		
		List<KindOfBusiness> kindOfBusinessList=pageLoadService.loadKindOfBusiness();
		return kindOfBusinessList;
	}
	
	@RequestMapping(value = "/registerTrainee", method = RequestMethod.POST)
	public String registerTrainee(@Valid @ModelAttribute("registrationFormTrainee") RegistrationFormTrainee registrationFormTrainee, BindingResult bindingResult,Model model)  {
		
		System.out.println("register controller before bind");
		if(bindingResult.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+bindingResult.hasErrors());
			System.out.println(bindingResult.getErrorCount());
			System.out.println(bindingResult.getAllErrors());
			return "registrationFormTrainee";
		}
		System.out.println("registrationFormTrainee controller");
		System.out.println(registrationFormTrainee);
		//RegisterTraineeInformationFull registerTraineeInformationFull = registrationServiceTrainee.registerTraineeInformationFull(registrationFormTrainee);
		String personalInformationTrainee = registrationServiceTrainee.registerPersonalInformationTrainee(registrationFormTrainee);
		if(personalInformationTrainee.equalsIgnoreCase("created")){
			model.addAttribute("created" , "User id created successfully !!");
			//return "registrationFormTrainee";
			return "welcome";
		}else{
			model.addAttribute("created" , "Oops , something went wrong !!");
			return "registrationFormTrainee";
		}
	}
}