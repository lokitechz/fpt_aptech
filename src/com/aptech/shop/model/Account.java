package com.aptech.shop.model;

public class Account {
	private long userId;
	private String userAccount;
	private String userPass;
	private boolean userRole;

	public Account() {
		super();
	}

	public Account(long userId, String userAccount, String userPass, boolean userRole) {
		super();
		this.userId = userId;
		this.userAccount = userAccount;
		this.userPass = userPass;
		this.userRole = userRole;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public boolean isUserRole() {
		return userRole;
	}

	public void setUserRole(boolean userRole) {
		this.userRole = userRole;
	}

}
