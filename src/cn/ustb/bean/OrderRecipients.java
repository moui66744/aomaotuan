package cn.ustb.bean;

public class OrderRecipients {
	private int recipientsId;
	private String recipientsName;
	private String recipientsAddress;
	private String recipientsPhone;
	private int recipientsUser;
	private int recipientsChecked;
	public int getRecipientsId() {
		return recipientsId;
	}
	public void setRecipientsId(int recipientsId) {
		this.recipientsId = recipientsId;
	}
	public String getRecipientsName() {
		return recipientsName;
	}
	public void setRecipientsName(String recipientsName) {
		this.recipientsName = recipientsName;
	}
	public String getRecipientsAddress() {
		return recipientsAddress;
	}
	public void setRecipientsAddress(String recipientsAddress) {
		this.recipientsAddress = recipientsAddress;
	}
	public String getRecipientsPhone() {
		return recipientsPhone;
	}
	public void setRecipientsPhone(String recipientsPhone) {
		this.recipientsPhone = recipientsPhone;
	}
	public int getRecipientsUser() {
		return recipientsUser;
	}
	public void setRecipientsUser(int recipientsUser) {
		this.recipientsUser = recipientsUser;
	}
	public int getRecipientsChecked() {
		return recipientsChecked;
	}
	public void setRecipientsChecked(int recipientsChecked) {
		this.recipientsChecked = recipientsChecked;
	}
	@Override
	public String toString() {
		return "OrderRecipients [recipientsId=" + recipientsId + ", recipientsName=" + recipientsName
				+ ", recipientsAddress=" + recipientsAddress + ", recipientsPhone=" + recipientsPhone
				+ ", recipientsUser=" + recipientsUser + ", recipientsChecked=" + recipientsChecked + "]";
	}

}
