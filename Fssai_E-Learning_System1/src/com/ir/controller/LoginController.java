package com.ir.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ir.form.LoginForm;
import com.ir.form.RegistrationFormTrainer;
import com.ir.model.CourseEnrolled;
import com.ir.model.LoginDetails;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.PersonalInformationTrainer;
import com.ir.model.PersonalInformationTrainingPartner;
import com.ir.model.State;
import com.ir.model.TrainingPartner;
import com.ir.service.AdminService;
import com.ir.service.LoginService;
import com.ir.service.UpdateService;

/**
 * 
 * @author lalit Pachauri
 *
 */
@Controller
@SessionAttributes
public class LoginController {
	
	
	@Autowired
	@Qualifier("loginService")
	LoginService loginService; 
	
	@Autowired
	@Qualifier("updateServiceImpl")
	UpdateService updateServiceImpl; 
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(@ModelAttribute("login") LoginForm loginForm , HttpSession session) {
		System.out.println("LoginController loginForm begin .");
		return "login";
	}
	
	/**
	 * @param loginForm
	 * @param result
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public String login(@Valid @ModelAttribute("login") LoginForm loginForm,BindingResult result, Model model, HttpSession session) {
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			session.invalidate();
			return "login";
		}
		LoginDetails loginDetails = loginService.login(loginForm);
		if(loginDetails!=null && loginDetails.getProfileId()==1 && loginDetails.getStatus().equalsIgnoreCase("A")){
			model.addAttribute("loginDetails", loginDetails);
			List<TrainingPartner> trainingPartnerList = trainingPartnerList();
			session.setAttribute("trainingPartnerList", trainingPartnerList);
			session.setAttribute("loginUser", loginDetails);
			System.out.println("in super admin admin login");
			return "adminHomepage";
		}else if(loginDetails!=null && loginDetails.getProfileId() == 2 && loginDetails.getStatus().equalsIgnoreCase("A")){
			System.out.println("in admin login");
			session.setAttribute("loginUser", loginDetails);
			return "adminHomepage";
		}else if(loginDetails !=null && loginDetails.getProfileId() == 3 && loginDetails.getStatus().equalsIgnoreCase("A"))
		{
			PersonalInformationTrainee personalInformationTrainee = new PersonalInformationTrainee();
			personalInformationTrainee = loginService.FullDetail(loginDetails.getId());
			System.out.println("in trainer login");
			model.addAttribute("loginUser", personalInformationTrainee);
			session.setAttribute("loginUser", personalInformationTrainee);
			session.setAttribute("loginUser1", personalInformationTrainee.getId());
			return "traineeHomepage";
		}else if(loginDetails!=null && loginDetails.getProfileId() == 4 && loginDetails.getStatus().equalsIgnoreCase("A")){
			PersonalInformationTrainee personalInformationTrainee = new PersonalInformationTrainee();
			personalInformationTrainee = loginService.FullDetail(loginDetails.getId());
			System.out.println("in trainee login");
			session.setAttribute("loginUr", personalInformationTrainee);
			model.addAttribute("loginUser", personalInformationTrainee);
			//
			//session.setAttribute("loginUser", "hellooo");
			
			return "traineeHomepage";
		}else if(loginDetails == null){
			System.out.println("in login when null");
			model.addAttribute("error"," UserId or Password is invalid");
			return "login";
		}else if(loginDetails!=null && loginDetails.getProfileId() == 7 && loginDetails.getStatus().equalsIgnoreCase("A")){
			// TRAINING PARTNER  //// TRAINING PARTNER  //// TRAINING PARTNER  //// TRAINING PARTNER  //
			session.invalidate();
			PersonalInformationTrainee personalInformationTrainee = new PersonalInformationTrainee();
			personalInformationTrainee = loginService.FullDetail(loginDetails.getId());
			System.out.println("in training partner login");
			session.setAttribute("loginUser", personalInformationTrainee);
			return "trainingPartnerDashboard";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(@Validated @ModelAttribute("login") LoginForm loginForm, HttpSession session,  BindingResult result,Model model) {
		model.addAttribute("error"," You have successfully logout");
		session.invalidate();
		return "login";
	}
	
	//@ModelAttribute("trainingPartnerCountList")
	public List<TrainingPartner> trainingPartnerList(){
		List<TrainingPartner> trainingPartnerList = loginService.trainingPartnerCountList();
		System.out.println("course name list   :   "+ trainingPartnerList);
		return trainingPartnerList;
	}
	
}