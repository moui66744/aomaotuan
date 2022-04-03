package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.bean.OrderDetail;
import cn.ustb.bean.Orders;
import cn.ustb.bean.Shopitems;

public interface OrderDetailService {

	public int insertOrderDetail(OrderDetail orderDetail);
	
}
