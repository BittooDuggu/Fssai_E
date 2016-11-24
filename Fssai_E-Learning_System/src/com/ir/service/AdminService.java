package com.ir.service;

import java.util.List;

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

public interface AdminService {

	String stateMasterSave(StateForm stateForm);
	//public stateSave()
	List<State> stateList();
	String districtMasterSave(DistrictForm districtForm);
	String cityMasterSave(CityForm cityForm);
	String regionMasterSave(RegionForm regionForm);
	List<CourseName> courseNameList();
	String manageCourse(ManageCourse manageCourse);
	List<CourseType> courseTypeList();
	String manageTrainingPartnerSave(ManageTrainingPartnerForm manageTrainingPartnerForm);
	String manageAssessmentAgencySave(ManageAssessmentAgencyForm manageAssessmentAgencyForm);
	List<PersonalInformationTrainee> traineeUserManagementSearch(TraineeUserManagementForm traineeUserManagementForm);
	List<AdminUserManagement> adminUserManagementSearch();
	String adminUserManagementSave(AdminUserManagementForm adminUserManagementForm);
	String manageCourseContentSearch(ManageCourseContentForm manageCourseContentForm);
	List<ManageTrainingPartner> trainingPartnerList();
	List<PersonalInformationTrainer> trainingNameList();
	String assessorUserManagementSave(AssessorUserManagementForm assessorUserManagementForm);


}
