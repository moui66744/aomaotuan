package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.Orders;
import cn.ustb.mapper.OrderSelectedMapper;
import cn.ustb.util.MybatisUtil;

public class OrderSelectedServiceImpl implements OrderSelectedService{

	@Override
	public ArrayList<Orders>getAllOrdersSelected(int select) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
 		OrderSelectedMapper mapper = sqlSession.getMapper(OrderSelectedMapper.class);
        ArrayList<Orders> list = mapper.getAllOrdersSelected(select);
        sqlSession.commit();
		return list;
	}

}
