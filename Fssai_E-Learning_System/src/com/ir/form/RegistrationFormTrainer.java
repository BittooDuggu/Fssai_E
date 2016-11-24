package com.ir.form;


import java.lang.reflect.Array;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;


public class RegistrationFormTrainer {
	
	@NotNull
	private String UserId;
	@NotNull
	private int Title;
	@NotNull
	@Size(min=12, max=12 , message="* error")
	private String AadharNumber;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String FirstName;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String MiddleName;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String LastName;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String DOB;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String gender;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String TrainingCenterPermanentLine1;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String TrainingCenterPermanentLine2;
	@NotNull
	private int TrainingCenterPermanentState;
	@NotNull
	private int TrainingCenterPermanentDistrict;
	@NotNull
	private int TrainingCenterPermanentCity;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String TrainingCenterPermanentPincode;
	@NotNull @Email(message="& error")
	private String TrainingCenterPermanentEmail;
	@NotNull
	@Size(min=10, max=10 , message="* error")
	private String TrainingCenterPermanentMobile;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String TrainingCenterCorrespondenceLine1;
	@NotNull
	@Size(min=1, max=20 , message="* error")
	private String TrainingCenterCorrespondenceLine2;
	@NotNull
	private int TrainingCenterCorrespondenceState;
	@NotNull
	private int TrainingCenterCorrespondenceDistrict;
	@NotNull
	private int TrainingCenterCorrespondenceCity;
	@NotNull
	@Size(min=6, max=6 , message="* error")
	private String TrainingCenterCorrespondencePincode;

	// *****************************//
	@NotNull
	private int FoodSafetyExpBackground;
	@NotNull @Size(min=1 , max=3 , message="* error")
	// ****************************//
	
	private String TrainingSessionWishToConduct;
	@NotNull(message="* error")
	private int ExpInFoodSafefyTimeYear;
	@NotNull @Size(min=1 , max=3 , message="* error")
	private String ExpInFoodSafefyTimeMonth;
	@NotNull
	private String AssociatedWithAnyTrainingPartner;
	@NotNull
	private String NoOfTrainingSessionConducted;
	@NotNull
	private String AssociatedTrainingpartnerName;
	///@NotNull
	private String BasicCourse;
	//@NotNull
	private String AdvanceCourse;
	//@NotNull
	private String SpecialCourse;
	
	private String BasicCourse1;
	private String AdvanceCourse1;
	private String SpecialCourse1;
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public int getTitle() {
		return Title;
	}
	public void setTitle(int title) {
		Title = title;
	}
	public String getAadharNumber() {
		return AadharNumber;
	}
	public void setAadharNumber(String aadharNumber) {
		AadharNumber = aadharNumber;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getMiddleName() {
		return MiddleName;
	}
	public void setMiddleName(String middleName) {
		MiddleName = middleName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTrainingCenterPermanentLine1() {
		return TrainingCenterPermanentLine1;
	}
	public void setTrainingCenterPermanentLine1(String trainingCenterPermanentLine1) {
		TrainingCenterPermanentLine1 = trainingCenterPermanentLine1;
	}
	public String getTrainingCenterPermanentLine2() {
		return TrainingCenterPermanentLine2;
	}
	public void setTrainingCenterPermanentLine2(String trainingCenterPermanentLine2) {
		TrainingCenterPermanentLine2 = trainingCenterPermanentLine2;
	}
	public int getTrainingCenterPermanentState() {
		return TrainingCenterPermanentState;
	}
	public void setTrainingCenterPermanentState(int trainingCenterPermanentState) {
		TrainingCenterPermanentState = trainingCenterPermanentState;
	}
	public int getTrainingCenterPermanentDistrict() {
		return TrainingCenterPermanentDistrict;
	}
	public void setTrainingCenterPermanentDistrict(int trainingCenterPermanentDistrict) {
		TrainingCenterPermanentDistrict = trainingCenterPermanentDistrict;
	}
	public int getTrainingCenterPermanentCity() {
		return TrainingCenterPermanentCity;
	}
	public void setTrainingCenterPermanentCity(int trainingCenterPermanentCity) {
		TrainingCenterPermanentCity = trainingCenterPermanentCity;
	}
	public String getTrainingCenterPermanentPincode() {
		return TrainingCenterPermanentPincode;
	}
	public void setTrainingCenterPermanentPincode(String trainingCenterPermanentPincode) {
		TrainingCenterPermanentPincode = trainingCenterPermanentPincode;
	}
	public String getTrainingCenterPermanentEmail() {
		return TrainingCenterPermanentEmail;
	}
	public void setTrainingCenterPermanentEmail(String trainingCenterPermanentEmail) {
		TrainingCenterPermanentEmail = trainingCenterPermanentEmail;
	}
	public String getTrainingCenterPermanentMobile() {
		return TrainingCenterPermanentMobile;
	}
	public void setTrainingCenterPermanentMobile(String trainingCenterPermanentMobile) {
		TrainingCenterPermanentMobile = trainingCenterPermanentMobile;
	}
	public String getTrainingCenterCorrespondenceLine1() {
		return TrainingCenterCorrespondenceLine1;
	}
	public void setTrainingCenterCorrespondenceLine1(String trainingCenterCorrespondenceLine1) {
		TrainingCenterCorrespondenceLine1 = trainingCenterCorrespondenceLine1;
	}
	public String getTrainingCenterCorrespondenceLine2() {
		return TrainingCenterCorrespondenceLine2;
	}
	public void setTrainingCenterCorrespondenceLine2(String trainingCenterCorrespondenceLine2) {
		TrainingCenterCorrespondenceLine2 = trainingCenterCorrespondenceLine2;
	}
	public int getTrainingCenterCorrespondenceState() {
		return TrainingCenterCorrespondenceState;
	}
	public void setTrainingCenterCorrespondenceState(int trainingCenterCorrespondenceState) {
		TrainingCenterCorrespondenceState = trainingCenterCorrespondenceState;
	}
	public int getTrainingCenterCorrespondenceDistrict() {
		return TrainingCenterCorrespondenceDistrict;
	}
	public void setTrainingCenterCorrespondenceDistrict(int trainingCenterCorrespondenceDistrict) {
		TrainingCenterCorrespondenceDistrict = trainingCenterCorrespondenceDistrict;
	}
	public int getTrainingCenterCorrespondenceCity() {
		return TrainingCenterCorrespondenceCity;
	}
	public void setTrainingCenterCorrespondenceCity(int trainingCenterCorrespondenceCity) {
		TrainingCenterCorrespondenceCity = trainingCenterCorrespondenceCity;
	}
	public String getTrainingCenterCorrespondencePincode() {
		return TrainingCenterCorrespondencePincode;
	}
	public void setTrainingCenterCorrespondencePincode(String trainingCenterCorrespondencePincode) {
		TrainingCenterCorrespondencePincode = trainingCenterCorrespondencePincode;
	}
	public int getFoodSafetyExpBackground() {
		return FoodSafetyExpBackground;
	}
	public void setFoodSafetyExpBackground(int foodSafetyExpBackground) {
		FoodSafetyExpBackground = foodSafetyExpBackground;
	}
	public String getTrainingSessionWishToConduct() {
		return TrainingSessionWishToConduct;
	}
	public void setTrainingSessionWishToConduct(String trainingSessionWishToConduct) {
		TrainingSessionWishToConduct = trainingSessionWishToConduct;
	}
	public int getExpInFoodSafefyTimeYear() {
		return ExpInFoodSafefyTimeYear;
	}
	public void setExpInFoodSafefyTimeYear(int expInFoodSafefyTimeYear) {
		ExpInFoodSafefyTimeYear = expInFoodSafefyTimeYear;
	}
	public String getExpInFoodSafefyTimeMonth() {
		return ExpInFoodSafefyTimeMonth;
	}
	public void setExpInFoodSafefyTimeMonth(String expInFoodSafefyTimeMonth) {
		ExpInFoodSafefyTimeMonth = expInFoodSafefyTimeMonth;
	}
	public String getAssociatedWithAnyTrainingPartner() {
		return AssociatedWithAnyTrainingPartner;
	}
	public void setAssociatedWithAnyTrainingPartner(String associatedWithAnyTrainingPartner) {
		AssociatedWithAnyTrainingPartner = associatedWithAnyTrainingPartner;
	}
	public String getNoOfTrainingSessionConducted() {
		return NoOfTrainingSessionConducted;
	}
	public void setNoOfTrainingSessionConducted(String noOfTrainingSessionConducted) {
		NoOfTrainingSessionConducted = noOfTrainingSessionConducted;
	}
	public String getAssociatedTrainingpartnerName() {
		return AssociatedTrainingpartnerName;
	}
	public void setAssociatedTrainingpartnerName(String associatedTrainingpartnerName) {
		AssociatedTrainingpartnerName = associatedTrainingpartnerName;
	}
	public String getBasicCourse() {
		return BasicCourse;
	}
	public void setBasicCourse(String basicCourse) {
		BasicCourse = basicCourse;
	}
	public String getAdvanceCourse() {
		return AdvanceCourse;
	}
	public void setAdvanceCourse(String advanceCourse) {
		AdvanceCourse = advanceCourse;
	}
	public String getSpecialCourse() {
		return SpecialCourse;
	}
	public void setSpecialCourse(String specialCourse) {
		SpecialCourse = specialCourse;
	}
	public String getBasicCourse1() {
		return BasicCourse1;
	}
	public void setBasicCourse1(String basicCourse1) {
		BasicCourse1 = basicCourse1;
	}
	public String getAdvanceCourse1() {
		return AdvanceCourse1;
	}
	public void setAdvanceCourse1(String advanceCourse1) {
		AdvanceCourse1 = advanceCourse1;
	}
	public String getSpecialCourse1() {
		return SpecialCourse1;
	}
	public void setSpecialCourse1(String specialCourse1) {
		SpecialCourse1 = specialCourse1;
	}
	
}