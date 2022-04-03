package cn.ustb.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.Admins;
import cn.ustb.bean.Goods;
import cn.ustb.bean.Orders;
import cn.ustb.bean.Shopitems;

public interface OrdersMapper {
	public int insertOrders(@Param("orders")Orders orders);
	public ArrayList<Orders> getAllOrdersAndOrdersType();
	public int updateOrderStatus(String orderId);
}
