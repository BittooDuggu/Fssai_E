package com.ir.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.*;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.ForeignKey;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.hibernate.validator.constraints.*;

@Entity
@Table(name="personalInformationTrainee")
public class PersonalInformationTrainee {
	
	
	@Id
    @Column(name="personalInformationTraineeId")
	@GeneratedValue
    private int id;
	
	
	@OneToOne (cascade=CascadeType.ALL)  @JoinColumn(name="loginDetails")
	private LoginDetails loginDetails;
	
	
	
	public LoginDetails getLoginDetails() {
		return loginDetails;
	}



	public void setLoginDetails(LoginDetails loginDetails) {
		this.loginDetails = loginDetails;
	}
	@NotNull
	private int title;
	@NotNull
	private String FirstName;
	@NotNull
	private String MiddleName;
	@NotNull
	private String  LastName ;
	@NotNull
	private String  AadharNumber ; 
	@NotNull @Email
	private String Email;
	@NotNull
	private String dob;
	@NotNull
	private String mobile;
	@NotNull
	private String gender;
	@NotNull
	private int profileCode;
	@NotNull
	private String ResidentialLine1; 
	@NotNull
	private String ResidentialLine2;
//	@NotNull
	private int resState;
//	@NotNull
	private int resCity;
	
	@NotNull
	private String resPincode;
	@NotNull @Size(min=2, max=20 , message="* error ")
	private String correspondenceAddress1;
	@NotNull @Size(min=2, max=20 , message="* error ")
	private String correspondenceAddress2;

//	@NotNull
	private int correspondenceState;
	@NotNull
	private int correspondenceCity;
//	@NotNull @Size(min=2, max=20 , message="* error ")
	private String correspondencePincode;

//	@NotNull
	private int correspondenceDistrict;
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
	

	
	
	public PersonalInformationTrainee(){}
	
	
	
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

	public int getCorrespondenceDistrict() {
		return correspondenceDistrict;
	}

	public void setCorrespondenceDistrict(int correspondenceDistrict) {
		this.correspondenceDistrict = correspondenceDistrict;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getResidentialLine1() {
		return ResidentialLine1;
	}
	public void setResidentialLine1(String residentialLine1) {
		ResidentialLine1 = residentialLine1;
	}
	public String getResidentialLine2() {
		return ResidentialLine2;
	}
	public void setResidentialLine2(String residentialLine2) {
		ResidentialLine2 = residentialLine2;
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
	
}
