package com.models;

import java.util.Date;

public class Tenant {
    private int registerNo;
    private String name;
    private String block;
    private String flatNo;
    private String address;
    private String vehicleDetails;
    private String mobile;
    private String govIdProof;
    private String govId;
    private Date inDate;
    private String inTime;
    private Date outDate;
    private String outTime;
    private String parkingSlot;
    private boolean status;

	public Tenant(int registerNo, String name, String block, String flatNo, String address, String vehicleDetails,
			String mobile, String govIdProof, String govId, Date inDate, String inTime, Date outDate, String outTime,
			String parkingSlot, boolean status) {
		super();
		this.registerNo = registerNo;
		this.name = name;
		this.block = block;
		this.flatNo = flatNo;
		this.address = address;
		this.vehicleDetails = vehicleDetails;
		this.mobile = mobile;
		this.govIdProof = govIdProof;
		this.govId = govId;
		this.inDate = inDate;
		this.inTime = inTime;
		this.outDate = outDate;
		this.outTime = outTime;
		this.parkingSlot = parkingSlot;
		this.status = status;
	}
	
	// it used for search
	public Tenant(int registerNo, String name, String block, String flatNo, String mobile, Date outDate, String outTime,
			boolean status) {
		super();
		this.registerNo = registerNo;
		this.name = name;
		this.block = block;
		this.flatNo = flatNo;
		this.mobile = mobile;
		this.outDate = outDate;
		this.outTime = outTime;
		this.status = status;
	}


	public int getRegisterNo() {
		return registerNo;
	}

	public void setRegisterNo(int registerNo) {
		this.registerNo = registerNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBlock() {
		return block;
	}

	public void setBlock(String block) {
		this.block = block;
	}

	public String getFlatNo() {
		return flatNo;
	}

	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getVehicleDetails() {
		return vehicleDetails;
	}

	public void setVehicleDetails(String vehicleDetails) {
		this.vehicleDetails = vehicleDetails;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGovIdProof() {
		return govIdProof;
	}

	public void setGovIdProof(String govIdProof) {
		this.govIdProof = govIdProof;
	}

	public String getGovId() {
		return govId;
	}

	public void setGovId(String govId) {
		this.govId = govId;
	}

	public Date getInDate() {
		return inDate;
	}

	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public Date getOutDate() {
		return outDate;
	}

	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}

	public String getOutTime() {
		return outTime;
	}

	public void setOutTime(String outTime) {
		this.outTime = outTime;
	}

	public String getParkingSlot() {
		return parkingSlot;
	}

	public void setParkingSlot(String parkingSlot) {
		this.parkingSlot = parkingSlot;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Tenant [registerNo=" + registerNo + ", name=" + name + ", block=" + block + ", flatNo=" + flatNo
				+ ", address=" + address + ", vehicleDetails=" + vehicleDetails + ", mobile=" + mobile + ", govIdProof="
				+ govIdProof + ", govId=" + govId + ", inDate=" + inDate + ", inTime=" + inTime + ", outDate=" + outDate
				+ ", outTime=" + outTime + ", parkingSlot=" + parkingSlot + ", status=" + status + "]";
	}

	

}