package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.Orders;
import cn.ustb.mapper.OrdersMapper;
import cn.ustb.util.MybatisUtil;

public class OrderServiceImpl implements OrderService{

	@Override
	public ArrayList<Orders>getAllOrdersAndOrdersType(){
		SqlSession sqlSession = MybatisUtil.getSqlSession();
 		OrdersMapper mapper = sqlSession.getMapper(OrdersMapper.class);
        ArrayList<Orders> list = mapper.getAllOrdersAndOrdersType();
        sqlSession.commit();
        return list;
	}

	@Override
	public int updateOrderStatus(String orderId) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
 		OrdersMapper mapper = sqlSession.getMapper(OrdersMapper.class);
        int result = mapper.updateOrderStatus(orderId);
        sqlSession.commit();
		return result;
	}
}
