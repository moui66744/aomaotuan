package cn.ustb.service;

import java.util.ArrayList;

import org.apache.catalina.mapper.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import cn.ustb.bean.Orders;
import cn.ustb.bean.Shopitems;
import cn.ustb.mapper.OrdersMapper;
import cn.ustb.mapper.ShopitemsMapper;
import cn.ustb.util.MybatisUtil;

public class OrdersServiceImpl implements OrdersService{
	

	@Override
	public int insertOrders(Orders orders) {
		try {
			SqlSession sqlSession=MybatisUtil.getSqlSession();
			 OrdersMapper mapper = sqlSession.getMapper(OrdersMapper.class);
			 int result = mapper.insertOrders(orders);
			sqlSession.commit();
			if(result>0){return 1;}//³É¹¦
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;//Ê§°Ü
	

	}

}
