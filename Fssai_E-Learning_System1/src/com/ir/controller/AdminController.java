package com.ir.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.ir.form.AdminUserManagementForm;
import com.ir.form.AssessorUserManagementForm;
import com.ir.form.CityForm;
import com.ir.form.DistrictForm;
import com.ir.form.ManageAssessmentAgencyForm;
import com.ir.form.ManageCourse;
import com.ir.form.ManageCourseContentForm;
import com.ir.form.ManageTrainingPartnerForm;
import com.ir.form.RegionForm;
import com.ir.form.RegistrationFormAssessor;
import com.ir.form.StateForm;
import com.ir.form.TraineeUserManagementForm;
import com.ir.form.TrainingCalendarForm;
import com.ir.model.AdminUserManagement;
import com.ir.model.CourseName;
import com.ir.model.CourseType;
import com.ir.model.District;
import com.ir.model.ManageTrainingPartner;
import com.ir.model.PersonalInformationTrainee;
import com.ir.model.PersonalInformationTrainer;
import com.ir.model.PersonalInformationTrainingPartner;
import com.ir.model.State;
import com.ir.model.TrainingPartner;
import com.ir.service.AdminService;

@Controller
public class AdminController {


	@Autowired
	@Qualifier("adminService")
	AdminService adminService; 
	
	
	@ModelAttribute("stateList")
	public List<State> stateList(){
		List<State> stateList = adminService.stateList();
		System.out.println("state list   :   "+ stateList);
		return stateList;
	}
	
	
	@ModelAttribute("trainingPartnerList")
	public List<ManageTrainingPartner> trainingPartnerList(){
		List<ManageTrainingPartner> trainingPartnerList = adminService.trainingPartnerList();
		System.out.println("course name list   :   "+ trainingPartnerList);
		return trainingPartnerList;
	}
	
	@ModelAttribute("trainingNameList")
	public List<PersonalInformationTrainer> trainingNameList(){
		List<PersonalInformationTrainer> trainingNameList = adminService.trainingNameList();
		System.out.println("trainer  name list   :   "+ trainingNameList);
		return trainingNameList;
	}
	
	@ModelAttribute("courseNameList")
	public List<CourseName> courseNameList(){
		List<CourseName> courseNameList = adminService.courseNameList();
		System.out.println("course name list   :   "+ courseNameList);
		return courseNameList;
	}
	
	@ModelAttribute("courseTypeList")
	public List<CourseType> courseTypeList(){
		List<CourseType> courseTypeList = adminService.courseTypeList();
		System.out.println("course Type List   :   "+ courseTypeList);
		return courseTypeList;
	}
		
	
	@RequestMapping(value="/stateMaster" , method=RequestMethod.GET)
	public String stateMaster(@ModelAttribute("stateMaster") StateForm stateForm , Model model){
		System.out.println("admin Controller state form begin .");
		model.addAttribute("submit"," ");
		return "stateMaster";
	}
	
	@RequestMapping(value = "/stateMasterSave", method = RequestMethod.POST)
	public String stateSave(@Valid @ModelAttribute("stateMaster") StateForm stateForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "stateMaster";
		}
		String stateMasterSave = adminService.stateMasterSave(stateForm);
		if(stateMasterSave.equalsIgnoreCase("created")){
			model.addAttribute("created"," State insertion successfull !!!");
			return "stateMaster";
		}else{
			model.addAttribute("created" , "State already exists in reord !!!");
			return "stateMaster";
		}	
	}
	
	@RequestMapping(value="/districtMaster" , method=RequestMethod.GET)
	public String districtMaster(@ModelAttribute("districtMaster") DistrictForm districtForm){
		System.out.println("admin Controller district form begin .");
		return "districtMaster";
	}
	
	@RequestMapping(value = "/districtMasterSave", method = RequestMethod.POST)
	public String stateSave(@Valid @ModelAttribute("districtMaster") DistrictForm districtForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "districtMaster";
		}
		String districtMasterSave = adminService.districtMasterSave(districtForm);
		if(districtMasterSave.equalsIgnoreCase("created")){
			model.addAttribute("created" , "District inserted successfully !!!");
			return "districtMaster";
		}else{
			model.addAttribute("created" , "District already exists in records !!!");
			return "districtMaster";
		}	
	}
	@RequestMapping(value="/cityMaster" , method=RequestMethod.GET)
	public String districtMaster(@ModelAttribute("cityMaster") CityForm cityForm){
		System.out.println("admin Controller city form begin .");
		return "cityMaster";
	}
	
	@RequestMapping(value = "/cityMasterSave", method = RequestMethod.POST)
	public String stateSave(@Valid @ModelAttribute("cityMaster") CityForm cityForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "cityMaster";
		}
		String cityMasterSave = adminService.cityMasterSave(cityForm);
		if(cityMasterSave.equalsIgnoreCase("created")){
			model.addAttribute("created"," City insertion successfull !!!");
			return "cityMaster";
		}else{
			model.addAttribute("created"," City already exists !!!");
			return "cityMaster";
		}	
	}
	@RequestMapping(value="/regionMappingMaster" , method=RequestMethod.GET)
	public String districtMaster(@ModelAttribute("regionMappingMaster") RegionForm regionForm){
		System.out.println("admin Controller region Mapping Master form begin .");
		return "regionMappingMaster";
	}
	
	@RequestMapping(value = "/regionMasterSave", method = RequestMethod.POST)
	public String stateSave(@Valid @ModelAttribute("regionMappingMaster") RegionForm regionForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "regionMappingMaster";
		}
		String regionMasterSave = adminService.regionMasterSave(regionForm);
		if(regionMasterSave != null && regionMasterSave  != ""){
			return "regionMappingMaster";
		}else{
			return "regionMappingMaster";
		}	
	}
	@RequestMapping(value="/manageCourse" , method=RequestMethod.GET)
	public String districtMaster(@ModelAttribute("manageCourse") ManageCourse manageCourse ,  Model model) throws JsonGenerationException, JsonMappingException, IOException{
		System.out.println("admin Controller manage course Master form begin .");
		System.out.println("llllllllll");
		return "manageCourse";
	}
	@RequestMapping(value = "/manageCourse", method = RequestMethod.POST)
	public String stateSave(@Valid @ModelAttribute("manageCourse") ManageCourse manageCourse,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "manageCourse";
		}
		String manageCourse1 = adminService.manageCourse(manageCourse);
		if(manageCourse1.equalsIgnoreCase("created")){
			model.addAttribute("created" ,"New course inserted successfully !!!");
			return "manageCourse";
		}else{
			model.addAttribute("created" ,"This course already inserted !!!");
			return "manageCourse";
		}	
	}
	
	@RequestMapping(value="/manageTrainingPartnerForm" , method=RequestMethod.GET)
	public String manageTrainingPartnerForm(@ModelAttribute("manageTrainingPartnerForm") ManageTrainingPartnerForm manageTrainingPartnerForm){
		System.out.println("admin Controller manage training partner form begin .");
		return "manageTrainingPartnerForm";
	}
	@RequestMapping(value = "/manageTrainingPartnerSave", method = RequestMethod.POST)
	public String stateSave(@Valid @ModelAttribute("manageTrainingPartnerForm") ManageTrainingPartnerForm manageTrainingPartnerForm,
			BindingResult result, Model model , SessionStatus status){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "manageTrainingPartnerForm";
		}
		String manageTrainingPartnerSave = adminService.manageTrainingPartnerSave(manageTrainingPartnerForm);
		if(manageTrainingPartnerSave != null && manageTrainingPartnerSave  != ""){
			return "manageTrainingPartnerForm";
		}else{
			status.setComplete();
			return "redirect:manageTrainingPartnerForm";
		}	
	}
	@RequestMapping(value="/manageAssessmentAgencyForm" , method=RequestMethod.GET)
	public String manageAssessmentAgencyForm(@ModelAttribute("manageAssessmentAgencyForm") ManageAssessmentAgencyForm manageAssessmentAgencyForm){
		System.out.println("admin Controller manage training partner form begin .");
		return "manageAssessmentAgencyForm";
	}
	@RequestMapping(value = "/manageAssessmentAgencySave", method = RequestMethod.POST)
	public String stateSave(@Valid @ModelAttribute("manageAssessmentAgencyForm") ManageAssessmentAgencyForm manageAssessmentAgencyForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "manageAssessmentAgencyForm";
		}
		String manageAssessmentAgencySave = adminService.manageAssessmentAgencySave(manageAssessmentAgencyForm);
		if(manageAssessmentAgencySave != null && manageAssessmentAgencySave  != ""){
			return "manageAssessmentAgencyForm";
		}else{
			return "manageAssessmentAgencyForm";
		}	
	}
	@RequestMapping(value="/traineeUserManagementForm" , method=RequestMethod.GET)
	public String traineeUserManagementForm(@ModelAttribute("traineeUserManagementForm") TraineeUserManagementForm traineeUserManagementForm){
		System.out.println("admin Controller manage training partner form begin .");
		return "traineeUserManagementForm";
	}
	@RequestMapping(value = "/traineeUserManagementSearch", method = RequestMethod.POST)
	public String traineeUserManagementSave(@Valid @ModelAttribute("traineeUserManagementForm") TraineeUserManagementForm traineeUserManagementForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "traineeUserManagementForm";
		}
		System.out.println("traineeUserManagementSearch controller  before method");
		
		List<PersonalInformationTrainee> traineeUserManagementSearch = adminService.traineeUserManagementSearch(traineeUserManagementForm);
		System.out.println("traineeUserManagementSearch controller" +traineeUserManagementSearch.get(0).getLoginDetails().getLoginId());
		if(traineeUserManagementSearch != null && traineeUserManagementSearch.size() > 0){
			model.addAttribute("searchTraineeUsermanagement" , traineeUserManagementSearch);
			return "traineeUserManagementForm";
		}else{
			return "traineeUserManagementForm";
		}	
	}
	@RequestMapping(value="/traineeRegistration" , method=RequestMethod.GET)
	public String traineeRegistration(Model model){
		System.out.println("admin Controller trainee reg form after link click form begin .");
		PersonalInformationTrainee personalInformationTrainee = new PersonalInformationTrainee();
		model.addAttribute("traineeRegistration", personalInformationTrainee);
		return "traineeRegistration";
	}
	
	@RequestMapping(value="/adminUserManagementForm" , method=RequestMethod.GET)
	public String adminUserManagementForm(Model model){
		System.out.println("admin Controller admin user managemenr reg form begin .");
		AdminUserManagementForm adminUserManagementForm = new AdminUserManagementForm();
		model.addAttribute("adminUserManagementForm", adminUserManagementForm);
		return "adminUserManagementForm";
	}
	
	@RequestMapping(value = "/adminUserManagementSave", method = RequestMethod.POST)
	public String adminUserManagementSave(@Valid @ModelAttribute("adminUserManagementForm") AdminUserManagementForm adminUserManagementForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "adminUserManagementForm";
		}
		//List<AdminUserManagement> adminUserManagementSearch = adminService.adminUserManagementSearch(adminUserManagementForm);
		String adminUserManagementSave = adminService.adminUserManagementSave(adminUserManagementForm);
		if(adminUserManagementSave.equalsIgnoreCase("created")){
			model.addAttribute("created" , "UserId created successfully !!!");
			return "adminUserManagementForm";
		}else{
			model.addAttribute("created" , "Oops , Something went wrong !!!");
			return "adminUserManagementForm";
		}	
	}
	@RequestMapping(value="/assessorUserManagementForm" , method=RequestMethod.GET)
	public String assessorUserManagementForm(Model model){
		System.out.println("admin Controller assessor user managemenr reg form begin .");
		AssessorUserManagementForm assessorUserManagementForm = new AssessorUserManagementForm();
		model.addAttribute("assessorUserManagementForm", assessorUserManagementForm);
		return "registrationFormAssessor";
	}
	@RequestMapping(value = "/assessorUserManagementSave", method = RequestMethod.POST)
	public String assessorUserManagementSave(@Valid @ModelAttribute("assessorUserManagementForm") AssessorUserManagementForm assessorUserManagementForm,BindingResult result, Model model){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "registrationFormAssessor";
		}
		String assessorUserManagement = adminService.assessorUserManagementSave(assessorUserManagementForm);
		if(assessorUserManagement.equalsIgnoreCase("created")){
			model.addAttribute("created" , "UserId created successfully !!!");
			return "registrationFormAssessor";
		}else{
			model.addAttribute("error" , "Already exists !!!");
			return "registrationFormAssessor";
		}
	}
	
	
	
	@RequestMapping(value="/manageCourseContent" , method=RequestMethod.GET)
	public String manageCourseContent(@ModelAttribute("manageCourseContent") ManageCourseContentForm manageCourseContentForm){
		System.out.println("admin Controller manage course content form begin .");
		return "manageCourseContent";
	}
	@RequestMapping(value = "/manageCourseContentSearch", method = RequestMethod.POST)
	public String manageCourseContentSearch(@Valid @ModelAttribute("manageCourseContent") ManageCourseContentForm manageCourseContentForm,BindingResult result, Model model
			, HttpSession session){
		if(result.hasErrors()){
			System.out.println(" bindingResult.hasErrors "+result.hasErrors());
			System.out.println(result.getErrorCount());
			System.out.println(result.getAllErrors());
			return "manageCourseContent";
		}
		String manageCourseContentSearch= adminService.manageCourseContentSearch(manageCourseContentForm);
		if(manageCourseContentSearch.equalsIgnoreCase("created")){
			model.addAttribute("created" , "Data inserted successfully !!!");
		}else{
			model.addAttribute("created" , "Data already exists !!!");
		}
		return "manageCourseContent";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/trainingCalendarForm")
	public String trainingCalendarForm( Model model){
		System.out.println("admin Controller training calender  admin form begin .");
		TrainingCalendarForm trainingCalendarForm = new TrainingCalendarForm();
		model.addAttribute("trainingCalendarForm", trainingCalendarForm);
		return "trainingCalendarForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	@ModelAttribute("searchAdminUserManagement")
	public List<AdminUserManagement> searchAdminUserManagement(){
		List<AdminUserManagement> searchAdminUserManagement = adminService.adminUserManagementSearch();
		return searchAdminUserManagement;
		
	}
	@RequestMapping(value="/searchManageCourse")
	public void getList( Model model) throws JsonGenerationException, JsonMappingException, IOException{
		System.out.println("lllllll getManageCourseList");
		List<CourseName> courseName = adminService.courseNameList();
		//model.addAttribute("list" , courseName);
		ObjectMapper mapper = new ObjectMapper();
        model.addAttribute("courseName", mapper.writeValueAsString(courseName));
	}
	@RequestMapping(value="/onLoadTrainingPartnerCenterId")
	public String onLoadTrainingPartnerCenterId(@RequestParam("id") int id , HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException {
	//public String onLoadTrainingPartnerCenterId() {
		//System.out.println("lllllll onLoadTrainingPartnerCenterId   " + id);
		req.getRequestDispatcher("onLoadTrainingPartnerCenterId?id="+id) .forward(req, res);
		return "dashboard";
	}
}
