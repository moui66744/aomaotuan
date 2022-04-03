package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.bean.Orders;
import cn.ustb.bean.Shopitems;

public interface OrdersService {

	public int insertOrders(Orders orders);
}
