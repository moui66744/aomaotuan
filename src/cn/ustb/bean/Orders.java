package cn.ustb.bean;

import java.sql.Timestamp;
import java.util.Date;

public class Orders {
	private String orderId;
	private int orderUser;
	private String orderAddress;
	private String orderPhone;
	private String orderName;
	private int orderStatus;
	private float orderPrice;
	private OrderStatus orderForStatus;
	private OrderDetail orderDetail;
	private Date orderTime;
	
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public int getOrderUser() {
		return orderUser;
	}

	public void setOrderUser(int orderUser) {
		this.orderUser = orderUser;
	}

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public String getOrderPhone() {
		return orderPhone;
	}

	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}

	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public float getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(float orderPrice) {
		this.orderPrice = orderPrice;
	}

	public OrderStatus getOrderForStatus() {
		return orderForStatus;
	}

	public void setOrderForStatus(OrderStatus orderForStatus) {
		this.orderForStatus = orderForStatus;
	}

	public OrderDetail getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(OrderDetail orderDetail) {
		this.orderDetail = orderDetail;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	@Override
	public String toString() {
		return "Orders [orderId=" + orderId + ", orderUser=" + orderUser + ", orderAddress=" + orderAddress
				+ ", orderPhone=" + orderPhone + ", orderName=" + orderName + ", orderStatus=" + orderStatus
				+ ", orderPrice=" + orderPrice + ", orderForStatus=" + orderForStatus + ", orderDetail=" + orderDetail
				+ ", orderTime=" + orderTime + "]";
	}
	
}
