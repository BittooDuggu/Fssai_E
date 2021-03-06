package com.ir.form;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;


public class RegistrationFormTrainingPartner {
	

	@NotNull @Size(min=1, max=20 , message="* error")
	private String UserId;
	@NotNull
	private int Title;
	@NotNull(message="* error")
	private int TrainingPartnerName;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String FirstName;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String MiddleName;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String LastName;
	@NotNull @Size(min=10, max=10 , message="* error")
	private String PAN;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String TrainingPartnerPermanentLine1;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String TrainingPartnerPermanentLine2;
	@NotNull(message="* error")
	private int TrainingPartnerPermanentState;
	@NotNull(message="* error")
	private int TrainingPartnerPermanentDistrict;
	@NotNull(message="* error")
	private int TrainingPartnerPermanentCity;
	@NotNull @Size(min=6, max=6 , message="* error")
	private String TrainingPartnerPermanentPincode;
	@NotNull @Email(message="& error")
	private String TrainingPartnerPermanentEmail;
	@NotNull @Size(min=10, max=10 , message="* error")
	private String TrainingPartnerPermanentMobile;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String SeatCapacityPerSession;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String NoOfInHouseTrainers;
	@NotNull @Size(min=1, max=1 , message="* error")
	private String AvailabiltyOfTVProjector;
	@NotNull @Size(min=1, max=2 , message="* error")
	private String NoOfYearsInBusinessOfTraining;
	@NotNull @Size(min=1, max=1 , message="* error")
	private String AvailabiltyOfInHouseTrainersInFoodSafety;
	@NotNull @Size(min=1, max=2 , message="* error")
	private String NoOfTrainingSessionWishToConductInAMonth;


	private String BasicCourse;
	private String AdvanceCourse;
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
	public int getTrainingPartnerName() {
		return TrainingPartnerName;
	}
	public void setTrainingPartnerName(int trainingPartnerName) {
		TrainingPartnerName = trainingPartnerName;
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
	public String getPAN() {
		return PAN;
	}
	public void setPAN(String pAN) {
		PAN = pAN;
	}
	public String getTrainingPartnerPermanentLine1() {
		return TrainingPartnerPermanentLine1;
	}
	public void setTrainingPartnerPermanentLine1(String trainingPartnerPermanentLine1) {
		TrainingPartnerPermanentLine1 = trainingPartnerPermanentLine1;
	}
	public String getTrainingPartnerPermanentLine2() {
		return TrainingPartnerPermanentLine2;
	}
	public void setTrainingPartnerPermanentLine2(String trainingPartnerPermanentLine2) {
		TrainingPartnerPermanentLine2 = trainingPartnerPermanentLine2;
	}
	public int getTrainingPartnerPermanentState() {
		return TrainingPartnerPermanentState;
	}
	public void setTrainingPartnerPermanentState(int trainingPartnerPermanentState) {
		TrainingPartnerPermanentState = trainingPartnerPermanentState;
	}
	public int getTrainingPartnerPermanentDistrict() {
		return TrainingPartnerPermanentDistrict;
	}
	public void setTrainingPartnerPermanentDistrict(int trainingPartnerPermanentDistrict) {
		TrainingPartnerPermanentDistrict = trainingPartnerPermanentDistrict;
	}
	public int getTrainingPartnerPermanentCity() {
		return TrainingPartnerPermanentCity;
	}
	public void setTrainingPartnerPermanentCity(int trainingPartnerPermanentCity) {
		TrainingPartnerPermanentCity = trainingPartnerPermanentCity;
	}
	public String getTrainingPartnerPermanentPincode() {
		return TrainingPartnerPermanentPincode;
	}
	public void setTrainingPartnerPermanentPincode(String trainingPartnerPermanentPincode) {
		TrainingPartnerPermanentPincode = trainingPartnerPermanentPincode;
	}
	public String getTrainingPartnerPermanentEmail() {
		return TrainingPartnerPermanentEmail;
	}
	public void setTrainingPartnerPermanentEmail(String trainingPartnerPermanentEmail) {
		TrainingPartnerPermanentEmail = trainingPartnerPermanentEmail;
	}
	public String getTrainingPartnerPermanentMobile() {
		return TrainingPartnerPermanentMobile;
	}
	public void setTrainingPartnerPermanentMobile(String trainingPartnerPermanentMobile) {
		TrainingPartnerPermanentMobile = trainingPartnerPermanentMobile;
	}
	public String getSeatCapacityPerSession() {
		return SeatCapacityPerSession;
	}
	public void setSeatCapacityPerSession(String seatCapacityPerSession) {
		SeatCapacityPerSession = seatCapacityPerSession;
	}
	public String getNoOfInHouseTrainers() {
		return NoOfInHouseTrainers;
	}
	public void setNoOfInHouseTrainers(String noOfInHouseTrainers) {
		NoOfInHouseTrainers = noOfInHouseTrainers;
	}
	public String getAvailabiltyOfTVProjector() {
		return AvailabiltyOfTVProjector;
	}
	public void setAvailabiltyOfTVProjector(String availabiltyOfTVProjector) {
		AvailabiltyOfTVProjector = availabiltyOfTVProjector;
	}
	public String getNoOfYearsInBusinessOfTraining() {
		return NoOfYearsInBusinessOfTraining;
	}
	public void setNoOfYearsInBusinessOfTraining(String noOfYearsInBusinessOfTraining) {
		NoOfYearsInBusinessOfTraining = noOfYearsInBusinessOfTraining;
	}
	public String getAvailabiltyOfInHouseTrainersInFoodSafety() {
		return AvailabiltyOfInHouseTrainersInFoodSafety;
	}
	public void setAvailabiltyOfInHouseTrainersInFoodSafety(String availabiltyOfInHouseTrainersInFoodSafety) {
		AvailabiltyOfInHouseTrainersInFoodSafety = availabiltyOfInHouseTrainersInFoodSafety;
	}
	public String getNoOfTrainingSessionWishToConductInAMonth() {
		return NoOfTrainingSessionWishToConductInAMonth;
	}
	public void setNoOfTrainingSessionWishToConductInAMonth(String noOfTrainingSessionWishToConductInAMonth) {
		NoOfTrainingSessionWishToConductInAMonth = noOfTrainingSessionWishToConductInAMonth;
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
