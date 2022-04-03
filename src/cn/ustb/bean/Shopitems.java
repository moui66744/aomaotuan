package cn.ustb.bean;

public class Shopitems {
	private int itemId;
	private int itemGoods;
	private int itemNum;
	private int itemUser;
	private Goods goods;
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public int getItemGoods() {
		return itemGoods;
	}
	public void setItemGoods(int itemGoods) {
		this.itemGoods = itemGoods;
	}
	public int getItemNum() {
		return itemNum;
	}
	public void setItemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	public int getItemUser() {
		return itemUser;
	}
	public void setItemUser(int itemUser) {
		this.itemUser = itemUser;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "Shopitems [itemId=" + itemId + ", itemGoods=" + itemGoods + ", itemNum=" + itemNum + ", itemUser="
				+ itemUser + ", goods=" + goods + "]";
	}
	
	
}
