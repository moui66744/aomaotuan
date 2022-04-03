package cn.ustb.bean;

public class GoodsType {
	private int typeId;
	private String typeName;
	private int typePid;
	private int typeLevel;
	private String typePath;
	@Override
	public String toString() {
		return "GoodsType [typeId=" + typeId + ", typeName=" + typeName + ", typePid=" + typePid + ", typeLevel="
				+ typeLevel + ", typePath=" + typePath + "]";
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public int getTypePid() {
		return typePid;
	}
	public void setTypePid(int typePid) {
		this.typePid = typePid;
	}
	public int getTypeLevel() {
		return typeLevel;
	}
	public void setTypeLevel(int typeLevel) {
		this.typeLevel = typeLevel;
	}
	public String getTypePath() {
		return typePath;
	}
	public void setTypePath(String typePath) {
		this.typePath = typePath;
	}
}
