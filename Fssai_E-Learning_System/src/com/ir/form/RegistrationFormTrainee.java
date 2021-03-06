package com.ir.form;


import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;


public class RegistrationFormTrainee {
	
	@NotNull
	private String UserId;
	@NotNull
	private int title;
	@NotNull
	@Size(min=1, max=20 , message="Please enter First Name") 
	private String FirstName;
	@NotNull
	@Size(min=1, max=20 , message="Please enter Middle Name")
	private String  MiddleName ;
	@NotNull
	@Size(min=1, max=20 , message="Please enter valid Last name")
	private String  LastName ;
	//@NotNull @Size(min=7, max=12 , message="Please enter valid password")
	private String Password="Password";
	@NotNull
	@Size(min=12, max=12 , message="Please enter valid Aadhar Number")
	private String  AadharNumber ; 
	@NotNull @Email(message="Invalid email !!")
	private String Email;
	//@DateTimeFormat(pattern="MM/dd/yyyy")
    @NotNull //@Past
	private String dob;
	@NotNull 
	@Size(min=10, max=10 , message = "Invalid mobile number !!")
	private String mobile;
	//@NotEmpty	@Size(min=1, max=1 , message="Please select gender")
	private String gender;
	@NotNull
	private int profileCode;
	@NotNull  
	@Size(min=2, max=20 , message="Please enter address")
	private String ResidentialAddressLine1; 
	@NotNull  @Size(min=2, max=20 , message="Please enter address")
	private String ResidentialAddressLine2;
//	@NotNull
	private int resState;
//	@NotNull 
	private int resCity;
//	@NotNull
	private int residentialDistrict;
	@NotNull @Size(min=6, max=6 , message="Please enter valid pincode")
	private String resPincode;
	
	
//	@NotNull
	private int KindOfBusiness;
	@NotNull @Size(min=2, max=20 , message="Please enter your designation")
	private String Designation;
	@NotNull @Size(min=2, max=20 , message="* error")
	private String BusinessAddressLine1;
	@NotNull @Size(min=2, max=20 , message="* error")
	private String BusinessAddressLine2;
//	@NotNull
	private int bussCity;
	@NotNull @Size(min=6, max=26 , message="Please enter your business pincode")
	private String bussPincode;
	@NotNull @Size(min=2, max=20 , message="Please enter your company name")
	private String CompanyName;
//	@NotNull
	private int bussState;
	

	
	private String captcha="jhgjhjh";

	public int getResidentialDistrict() {
		return residentialDistrict;
	s}

	public void setResidentialDistrict(int residentialDistrict) {
		this.residentialDistrict = residentialDistrict;
	}

	public int getCorrespondenceDistrict() {
		return correspondenceDistrict;
	}

	public void setCorrespondenceDistrict(int correspondenceDistrict) {
		this.correspondenceDistrict = correspondenceDistrict;
	}

	@NotNull @Size(min=2, max=20 , message="* error ")
	private String correspondenceAddress1;
	@NotNull @Size(min=2, max=20 , message="* error ")
	private String correspondenceAddress2;

	@NotNull
	private int correspondenceState;
	@NotNull
	private int correspondenceCity;
	@NotNull @Size(min=2, max=20 , message="* error ")
	private String correspondencePincode;

	@NotNull
	private int correspondenceDistrict;
	
	@NotNull
	private int bussDistrict;
	
	
	public int getBussDistrict() {
		return bussDistrict;
	}

	public void setBussDistrict(int bussDistrict) {
		this.bussDistrict = bussDistrict;
	}

	public RegistrationFormTrainee(){}

	

	public String getCorrespondenceAddress1() {
		return correspondenceAddress1;
	}

	public void setCorrespondenceAddress1(String correspondenceAddress1) {
		this.correspondenceAddress1 = correspondenceAddress1;
	}

	public String getCorrespondenceAddress2() {
		return correspondenceAddress2;
	}

	public void setCorrespondenceAddress2(String correspondenceAddress2) {
		this.correspondenceAddress2 = correspondenceAddress2;
	}

	public int getCorrespondenceState() {
		return correspondenceState;
	}

	public void setCorrespondenceState(int correspondenceState) {
		this.correspondenceState = correspondenceState;
	}

	public int getCorrespondenceCity() {
		return correspondenceCity;
	}

	public void setCorrespondenceCity(int correspondenceCity) {
		this.correspondenceCity = correspondenceCity;
	}

	public String getCorrespondencePincode() {
		return correspondencePincode;
	}

	public void setCorrespondencePincode(String correspondencePincode) {
		this.correspondencePincode = correspondencePincode;
	}

	

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public int getTitle() {
		return title;
	}

	public void setTitle(int title) {
		this.title = title;
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

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getAadharNumber() {
		return AadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		AadharNumber = aadharNumber;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getProfileCode() {
		return profileCode;
	}

	public void setProfileCode(int profileCode) {
		this.profileCode = profileCode;
	}

	public String getResidentialAddressLine1() {
		return ResidentialAddressLine1;
	}

	public void setResidentialAddressLine1(String residentialAddressLine1) {
		ResidentialAddressLine1 = residentialAddressLine1;
	}

	public String getResidentialAddressLine2() {
		return ResidentialAddressLine2;
	}

	public void setResidentialAddressLine2(String residentialAddressLine2) {
		ResidentialAddressLine2 = residentialAddressLine2;
	}

	public int getResState() {
		return resState;
	}

	public void setResState(int resState) {
		this.resState = resState;
	}

	public int getResCity() {
		return resCity;
	}

	public void setResCity(int resCity) {
		this.resCity = resCity;
	}

	
	public String getResPincode() {
		return resPincode;
	}

	public void setResPincode(String resPincode) {
		this.resPincode = resPincode;
	}

	public int getKindOfBusiness() {
		return KindOfBusiness;
	}

	public void setKindOfBusiness(int kindOfBusiness) {
		KindOfBusiness = kindOfBusiness;
	}

	public String getDesignation() {
		return Designation;
	}

	public void setDesignation(String designation) {
		Designation = designation;
	}

	public String getBusinessAddressLine1() {
		return BusinessAddressLine1;
	}

	public void setBusinessAddressLine1(String businessAddressLine1) {
		BusinessAddressLine1 = businessAddressLine1;
	}

	public String getBusinessAddressLine2() {
		return BusinessAddressLine2;
	}

	public void setBusinessAddressLine2(String businessAddressLine2) {
		BusinessAddressLine2 = businessAddressLine2;
	}

	public int getBussCity() {
		return bussCity;
	}

	public void setBussCity(int bussCity) {
		this.bussCity = bussCity;
	}

	public String getBussPincode() {
		return bussPincode;
	}

	public void setBussPincode(String bussPincode) {
		this.bussPincode = bussPincode;
	}

	public String getCompanyName() {
		return CompanyName;
	}

	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}

	public int getBussState() {
		return bussState;
	}

	public void setBussState(int bussState) {
		this.bussState = bussState;
	}

	

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
	
	
}
