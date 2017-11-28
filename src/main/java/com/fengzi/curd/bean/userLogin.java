package com.fengzi.curd.bean;

public class userLogin {
    private Integer id;

    private String userid;

    private String userpassword;

    private String username;

    private String userorigin;

    private String userphone;

    private String useremail;

    private String userpermission;

    
    public userLogin(Integer id, String userid, String userpassword, String username, String userorigin,
			String userphone, String useremail, String userpermission) {
		super();
		this.id = id;
		this.userid = userid;
		this.userpassword = userpassword;
		this.username = username;
		this.userorigin = userorigin;
		this.userphone = userphone;
		this.useremail = useremail;
		this.userpermission = userpermission;
	}

	public userLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserorigin() {
        return userorigin;
    }

    public void setUserorigin(String userorigin) {
        this.userorigin = userorigin == null ? null : userorigin.trim();
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public String getUserpermission() {
        return userpermission;
    }

    public void setUserpermission(String userpermission) {
        this.userpermission = userpermission == null ? null : userpermission.trim();
    }
}