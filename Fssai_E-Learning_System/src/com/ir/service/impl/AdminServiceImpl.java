package com.ir.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.ir.dao.AdminDAO;
import com.ir.dao.RegistrationDAO;
import com.ir.form.AdminUserManagementForm;
import com.ir.form.AssessorUserManagementForm;
import com.ir.form.CityForm;
import com.ir.form.DistrictForm;
import com.ir.form.ManageAssessmentAgencyForm;
import com.ir.form.ManageCourse;
import com.ir.form.ManageCourseContentForm;
import com.ir.form.ManageTrainingPartnerForm;
import com.ir.form.RegionForm;
import com.ir.form.StateForm;
import com.ir.form.TraineeUserManagementForm;
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

public class AdminServiceImpl implements AdminService {

	
	@Autowired
	@Qualifier("adminDAO")
	AdminDAO adminDAO; 

	@Override
	public String stateMasterSave(StateForm stateForm) {
		// TODO Auto-generated method stub
		String stateMasterSave = adminDAO.stateMasterSave(stateForm);
		return stateMasterSave;
	}

	@Override
	public List<State> stateList() {
		// TODO Auto-generated method stub
		List<State> stateList = adminDAO.stateList();
		return stateList;
	}

	@Override
	public String districtMasterSave(DistrictForm districtForm) {
		// TODO Auto-generated method stub
		String districtMasterSave = adminDAO.districtMasterSave(districtForm);
		return districtMasterSave;
	}

	@Override
	public String cityMasterSave(CityForm cityForm) {
		String cityMasterSave = adminDAO.cityMasterSave(cityForm);
		return cityMasterSave;
	}

	@Override
	public String regionMasterSave(RegionForm regionForm) {
		String regionMasterSave = adminDAO.regionMasterSave(regionForm);
		return regionMasterSave;
	}

	@Override
	public List<CourseName> courseNameList() {
		List<CourseName> courseNameList = adminDAO.courseNameList();
		return courseNameList;
	}

	@Override
	public String manageCourse(ManageCourse manageCourse) {
		String manageCourse1 = adminDAO.manageCourse(manageCourse);
		return manageCourse1;
	}

	@Override
	public List<CourseType> courseTypeList() {
		List<CourseType> courseTypeList = adminDAO.courseTypeList();
		return courseTypeList;
	}

	@Override
	public String manageTrainingPartnerSave(ManageTrainingPartnerForm manageTrainingPartnerForm) {
		// TODO Auto-generated method stub
		String manageTrainingPartnerSave = adminDAO.manageTrainingPartnerSave(manageTrainingPartnerForm);
		return manageTrainingPartnerSave;
	}

	@Override
	public String manageAssessmentAgencySave(ManageAssessmentAgencyForm manageAssessmentAgencyForm) {
		String manageAssessmentAgencySave = adminDAO.manageAssessmentAgencySave(manageAssessmentAgencyForm);
		return manageAssessmentAgencySave;
	}

	@Override
	public List<PersonalInformationTrainee> traineeUserManagementSearch(TraineeUserManagementForm traineeUserManagementForm) {
		List<PersonalInformationTrainee> traineeUserManagementSearch = adminDAO.traineeUserManagementSearch(traineeUserManagementForm);
		return traineeUserManagementSearch;
	}

	@Override
	public List<AdminUserManagement> adminUserManagementSearch() {
		List<AdminUserManagement> adminUserManagementSearch = adminDAO.adminUserManagementSearch();
		return adminUserManagementSearch;
	}

	@Override
	public String adminUserManagementSave(AdminUserManagementForm adminUserManagementForm) {
		String adminUserManagementSave = adminDAO.adminUserManagementSave(adminUserManagementForm);
		return adminUserManagementSave;
	}

	@Override
	public String manageCourseContentSearch(ManageCourseContentForm manageCourseContentForm) {
		String manageCourseContentSearch = adminDAO.manageCourseContentSearch(manageCourseContentForm);
		return manageCourseContentSearch;
	}

	@Override
	public List<ManageTrainingPartner> trainingPartnerList() {
		List<ManageTrainingPartner> trainingPartnerList = adminDAO.trainingPartnerList();
		return trainingPartnerList;
	}

	@Override
	public List<PersonalInformationTrainer> trainingNameList() {
		List<PersonalInformationTrainer> trainingNameList = adminDAO.trainingNameList();
		return trainingNameList;
	}

	@Override
	public String assessorUserManagementSave(AssessorUserManagementForm assessorUserManagementForm) {
		String assessorUserManagementSave = adminDAO.assessorUserManagementSave(assessorUserManagementForm);
		return assessorUserManagementSave;
	}
}
