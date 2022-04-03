package cn.ustb.bean;

public class Admins {
	private int adminId;
	private String adminName;
	private String adminPass;
	private int adminRole;
	private Roles role;
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPass() {
		return adminPass;
	}
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
	public int getAdminRole() {
		return adminRole;
	}
	public void setAdminRole(int adminRole) {
		this.adminRole = adminRole;
	}
	public Roles getRole() {
		return role;
	}
	public void setRole(Roles role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Admins [adminId=" + adminId + ", adminName=" + adminName + ", adminPass=" + adminPass + ", adminRole="
				+ adminRole + ", role=" + role + "]";
	}
	
}
