package com.ir.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="kindOfBusiness")
public class KindOfBusiness {

	@Id
	@Column(name="kindOfBusinessId")
	private int kindOfBusinessId;
	@Column(name="kindOfBusinessName")
	@NotEmpty(message="Please selct your business type !")
	private String kindOfBusinessName;
	
	public KindOfBusiness() {
	}
	
	public KindOfBusiness(int kindOfBusinessId, String kindOfBusinessName) {
		super();
		this.kindOfBusinessId = kindOfBusinessId;
		this.kindOfBusinessName = kindOfBusinessName;
	}

	public int getKindOfBusinessId() {
		return kindOfBusinessId;
	}

	public void setKindOfBusinessId(int kindOfBusinessId) {
		this.kindOfBusinessId = kindOfBusinessId;
	}

	public String getKindOfBusinessName() {
		return kindOfBusinessName;
	}

	public void setKindOfBusinessName(String kindOfBusinessName) {
		this.kindOfBusinessName = kindOfBusinessName;
	}
	
	public String toString() {
        return "kindOfBusinessName: " + this.kindOfBusinessName + ", kindOfBusinessId: " + this.kindOfBusinessId + ")";
    }
	
}
