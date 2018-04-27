package com.fengzi.ITSS.bean;

public class Equip {
    private Integer eqId;

    private String eqName;

    private String eqAddress;

    private String eqPort;

    private String eqLoginname;

    private String eqLoginpassword;

    private String eqLoginmod;

    
    public Equip(Integer eqId, String eqName, String eqAddress, String eqPort, String eqLoginname,
			String eqLoginpassword, String eqLoginmod) {
		super();
		this.eqId = eqId;
		this.eqName = eqName;
		this.eqAddress = eqAddress;
		this.eqPort = eqPort;
		this.eqLoginname = eqLoginname;
		this.eqLoginpassword = eqLoginpassword;
		this.eqLoginmod = eqLoginmod;
	}

	public Equip() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getEqId() {
        return eqId;
    }

    public void setEqId(Integer eqId) {
        this.eqId = eqId;
    }

    public String getEqName() {
        return eqName;
    }

    public void setEqName(String eqName) {
        this.eqName = eqName == null ? null : eqName.trim();
    }

    public String getEqAddress() {
        return eqAddress;
    }

    public void setEqAddress(String eqAddress) {
        this.eqAddress = eqAddress == null ? null : eqAddress.trim();
    }

    public String getEqPort() {
        return eqPort;
    }

    public void setEqPort(String eqPort) {
        this.eqPort = eqPort == null ? null : eqPort.trim();
    }

    public String getEqLoginname() {
        return eqLoginname;
    }

    public void setEqLoginname(String eqLoginname) {
        this.eqLoginname = eqLoginname == null ? null : eqLoginname.trim();
    }

    public String getEqLoginpassword() {
        return eqLoginpassword;
    }

    public void setEqLoginpassword(String eqLoginpassword) {
        this.eqLoginpassword = eqLoginpassword == null ? null : eqLoginpassword.trim();
    }

    public String getEqLoginmod() {
        return eqLoginmod;
    }

    public void setEqLoginmod(String eqLoginmod) {
        this.eqLoginmod = eqLoginmod == null ? null : eqLoginmod.trim();
    }
}