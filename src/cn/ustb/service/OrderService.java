package cn.ustb.service;

import java.util.ArrayList;

import cn.ustb.bean.Orders;

public interface OrderService {
	public ArrayList<Orders>getAllOrdersAndOrdersType();
	public int updateOrderStatus(String orderId);
}
