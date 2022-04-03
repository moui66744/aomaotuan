package cn.ustb.service;

import java.util.ArrayList;

import org.apache.catalina.mapper.Mapper;
import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ustb.bean.OrderDetail;
import cn.ustb.bean.Orders;
import cn.ustb.bean.Shopitems;
import cn.ustb.mapper.OrderDetailMapper;
import cn.ustb.mapper.OrdersMapper;
import cn.ustb.mapper.ShopitemsMapper;
import cn.ustb.util.MybatisUtil;

public class OrderDetailServiceImpl implements OrderDetailService{
	


	@Override
	public int insertOrderDetail(OrderDetail orderDetail) {
		// TODO Auto-generated method stub
		
		try {
			SqlSession sqlSession=MybatisUtil.getSqlSession();
			 OrderDetailMapper mapper = sqlSession.getMapper(OrderDetailMapper.class);
			 int result = mapper.insertOrderDetail(orderDetail);
			sqlSession.commit();
			if(result>0){return 1;}//³É¹¦
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;//Ê§°Ü
	}

}
