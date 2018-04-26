package com.fengzi.ITSS.bean;

import javax.validation.constraints.Pattern;

public class UserContacts {
	private Integer id;

	private String userName;

	private String userOrigin;

	private String userPhone;

	// @Email
	@Pattern(regexp = "^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$", message = "邮箱格式不符合规则！")
	private String userEmail;

	private String userQQ;

	private String userWechat;

	private String userSystem;

	private String userRemark;

	public UserContacts() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserContacts(Integer id, String userName, String userOrigin, String userPhone, String userEmail,
			String userQQ, String userWechat, String userSystem, String userRemark) {
		super();
		this.id = id;
		this.userName = userName;
		this.userOrigin = userOrigin;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userQQ = userQQ;
		this.userWechat = userWechat;
		this.userSystem = userSystem;
		this.userRemark = userRemark;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return userName;
	}

	public void setUsername(String username) {
		this.userName = username == null ? null : username.trim();
	}

	public String getUserorigin() {
		return userOrigin;
	}

	public void setUserorigin(String userorigin) {
		this.userOrigin = userorigin == null ? null : userorigin.trim();
	}

	public String getUserphone() {
		return userPhone;
	}

	public void setUserphone(String userphone) {
		this.userPhone = userphone == null ? null : userphone.trim();
	}

	public String getUseremail() {
		return userEmail;
	}

	public void setUseremail(String useremail) {
		this.userEmail = useremail == null ? null : useremail.trim();
	}

	public String getUserqq() {
		return userQQ;
	}

	public void setUserqq(String userqq) {
		this.userQQ = userqq == null ? null : userqq.trim();
	}

	public String getUserwechat() {
		return userWechat;
	}

	public void setUserwechat(String userwechat) {
		this.userWechat = userwechat == null ? null : userwechat.trim();
	}

	public String getUsersystem() {
		return userSystem;
	}

	public void setUsersystem(String usersystem) {
		this.userSystem = usersystem == null ? null : usersystem.trim();
	}

	public String getUserremark() {
		return userRemark;
	}

	public void setUserremark(String userremark) {
		this.userRemark = userremark == null ? null : userremark.trim();
	}
}