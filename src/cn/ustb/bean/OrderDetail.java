package cn.ustb.bean;

public class OrderDetail {
	private int detailId;
	private String detailOrder;
	private int detailGoods;
	private Goods goods;
	private float detailPrice;
	private int detailNum;
	public int getDetailId() {
		return detailId;
	}
	public void setDetailId(int detailId) {
		this.detailId = detailId;
	}
	public String getDetailOrder() {
		return detailOrder;
	}
	public void setDetailOrder(String detailOrder) {
		this.detailOrder = detailOrder;
	}
	public int getDetailGoods() {
		return detailGoods;
	}
	public void setDetailGoods(int detailGoods) {
		this.detailGoods = detailGoods;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public float getDetailPrice() {
		return detailPrice;
	}
	public void setDetailPrice(float detailPrice) {
		this.detailPrice = detailPrice;
	}
	public int getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(int detailNum) {
		this.detailNum = detailNum;
	}
	@Override
	public String toString() {
		return "OrderDetail [detailId=" + detailId + ", detailOrder=" + detailOrder + ", detailGoods=" + detailGoods
				+ ", goods=" + goods + ", detailPrice=" + detailPrice + ", detailNum=" + detailNum + "]";
	}
	
}
