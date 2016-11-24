package com.ir.model;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;

@Entity
@Table(name="personalInformationAssessor")
public class PersonalInformationAssessor {
	
	
	@Id
	@GeneratedValue
	private int personalInformationAssessorId;

	@OneToOne (cascade=CascadeType.ALL)  @JoinColumn(name="loginDetails")
	private LoginDetails loginDetails;
	
	
	
	
	public LoginDetails getLoginDetails() {
		return loginDetails;
	}
	public void setLoginDetails(LoginDetails loginDetails) {
		this.loginDetails = loginDetails;
	}
	@NotNull
	private int Title;
	@NotNull @Size(min=12, max=12 , message="* error")
	private String AadharNumber;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String FirstName;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String MiddleName;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String LastName;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String DOB;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String gender;
	
	@NotNull
	private int AssessmentAgencyName;
	
	@NotNull @Size(min=1, max=20 , message="* error")
	private String AssessorPermanentLine1;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String AssessorPermanentLine2;
	@NotNull
	private int AssessorrPermanentState;
	@NotNull
	private int AssessorPermanentDistrict;
	@NotNull
	private int AssessorPermanentCity;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String AssessorPermanentPincode;
	@NotNull @Email(message="& error")
	private String AssessorPermanentEmail;
	@NotNull @Size(min=10, max=10 , message="* error")
	private String AssessorPermanentMobile;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String AssessorCorrespondenceLine1;
	@NotNull @Size(min=1, max=20 , message="* error")
	private String AssessorCorrespondenceLine2;
	@NotNull
	private int AssessorCorrespondenceState;
	@NotNull
	private int AssessorCorrespondenceDistrict;
	@NotNull
	private int AssessorCorrespondenceCity;
	@NotNull @Size(min=6, max=6 , message="* error")
	private String AssessorCorrespondencePincode;
	@NotNull
	private int ReleventExpOfAuditInYear;
	@NotNull
	private String ReleventExpOfAuditInMonth;
	@NotNull
	private String HowManyAssessmentConductInAMonth;
	
	public PersonalInformationAssessor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getPersonalInformationAssessorId() {
		return personalInformationAssessorId;
	}
	public void setPersonalInformationAssessorId(int personalInformationAssessorId) {
		this.personalInformationAssessorId = personalInformationAssessorId;
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
	public int getAssessmentAgencyName() {
		return AssessmentAgencyName;
	}
	public void setAssessmentAgencyName(int assessmentAgencyName) {
		AssessmentAgencyName = assessmentAgencyName;
	}
	public String getAssessorPermanentLine1() {
		return AssessorPermanentLine1;
	}
	public void setAssessorPermanentLine1(String assessorPermanentLine1) {
		AssessorPermanentLine1 = assessorPermanentLine1;
	}
	public String getAssessorPermanentLine2() {
		return AssessorPermanentLine2;
	}
	public void setAssessorPermanentLine2(String assessorPermanentLine2) {
		AssessorPermanentLine2 = assessorPermanentLine2;
	}
	public int getAssessorrPermanentState() {
		return AssessorrPermanentState;
	}
	public void setAssessorrPermanentState(int assessorrPermanentState) {
		AssessorrPermanentState = assessorrPermanentState;
	}
	public int getAssessorPermanentDistrict() {
		return AssessorPermanentDistrict;
	}
	public void setAssessorPermanentDistrict(int assessorPermanentDistrict) {
		AssessorPermanentDistrict = assessorPermanentDistrict;
	}
	public int getAssessorPermanentCity() {
		return AssessorPermanentCity;
	}
	public void setAssessorPermanentCity(int assessorPermanentCity) {
		AssessorPermanentCity = assessorPermanentCity;
	}
	public String getAssessorPermanentPincode() {
		return AssessorPermanentPincode;
	}
	public void setAssessorPermanentPincode(String assessorPermanentPincode) {
		AssessorPermanentPincode = assessorPermanentPincode;
	}
	public String getAssessorPermanentEmail() {
		return AssessorPermanentEmail;
	}
	public void setAssessorPermanentEmail(String assessorPermanentEmail) {
		AssessorPermanentEmail = assessorPermanentEmail;
	}
	public String getAssessorPermanentMobile() {
		return AssessorPermanentMobile;
	}
	public void setAssessorPermanentMobile(String assessorPermanentMobile) {
		AssessorPermanentMobile = assessorPermanentMobile;
	}
	public String getAssessorCorrespondenceLine1() {
		return AssessorCorrespondenceLine1;
	}
	public void setAssessorCorrespondenceLine1(String assessorCorrespondenceLine1) {
		AssessorCorrespondenceLine1 = assessorCorrespondenceLine1;
	}
	public String getAssessorCorrespondenceLine2() {
		return AssessorCorrespondenceLine2;
	}
	public void setAssessorCorrespondenceLine2(String assessorCorrespondenceLine2) {
		AssessorCorrespondenceLine2 = assessorCorrespondenceLine2;
	}
	public int getAssessorCorrespondenceState() {
		return AssessorCorrespondenceState;
	}
	public void setAssessorCorrespondenceState(int assessorCorrespondenceState) {
		AssessorCorrespondenceState = assessorCorrespondenceState;
	}
	public int getAssessorCorrespondenceDistrict() {
		return AssessorCorrespondenceDistrict;
	}
	public void setAssessorCorrespondenceDistrict(int assessorCorrespondenceDistrict) {
		AssessorCorrespondenceDistrict = assessorCorrespondenceDistrict;
	}
	public int getAssessorCorrespondenceCity() {
		return AssessorCorrespondenceCity;
	}
	public void setAssessorCorrespondenceCity(int assessorCorrespondenceCity) {
		AssessorCorrespondenceCity = assessorCorrespondenceCity;
	}
	public String getAssessorCorrespondencePincode() {
		return AssessorCorrespondencePincode;
	}
	public void setAssessorCorrespondencePincode(String assessorCorrespondencePincode) {
		AssessorCorrespondencePincode = assessorCorrespondencePincode;
	}
	public int getReleventExpOfAuditInYear() {
		return ReleventExpOfAuditInYear;
	}
	public void setReleventExpOfAuditInYear(int releventExpOfAuditInYear) {
		ReleventExpOfAuditInYear = releventExpOfAuditInYear;
	}
	public String getReleventExpOfAuditInMonth() {
		return ReleventExpOfAuditInMonth;
	}
	public void setReleventExpOfAuditInMonth(String releventExpOfAuditInMonth) {
		ReleventExpOfAuditInMonth = releventExpOfAuditInMonth;
	}
	public String getHowManyAssessmentConductInAMonth() {
		return HowManyAssessmentConductInAMonth;
	}
	public void setHowManyAssessmentConductInAMonth(String howManyAssessmentConductInAMonth) {
		HowManyAssessmentConductInAMonth = howManyAssessmentConductInAMonth;
	}
	
	
}
