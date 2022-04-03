package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.OrderRecipients;
import cn.ustb.mapper.OrderRecipientsMapper;
import cn.ustb.util.MybatisUtil;

public class OrderRecipientsServiceImpl implements OrderRecipientsService {

	@Override
	public ArrayList<OrderRecipients> getAllOrderRecipientsByUserId(int userId) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		OrderRecipientsMapper mapper = sqlSession.getMapper(OrderRecipientsMapper.class);
		ArrayList<OrderRecipients> allOrderRecipients = mapper.getAllOrderRecipientsByUserId(userId);
		return allOrderRecipients;
	}

	@Override
	public OrderRecipients getOrderRecipientsByRecipientsId(int recipientsId) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		OrderRecipientsMapper mapper = sqlSession.getMapper(OrderRecipientsMapper.class);
		OrderRecipients orderRecipients = mapper.getOrderRecipientsByRecipientsId(recipientsId);
		return orderRecipients;
	}

	@Override
	public int deleteOrderRecipientsById(int recipientsId) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		OrderRecipientsMapper mapper = sqlSession.getMapper(OrderRecipientsMapper.class);
		int res = mapper.deleteOrderRecipientsById(recipientsId);
		sqlSession.commit();
		return res;
	}

	@Override
	public int insertOrderRecipients(OrderRecipients orderRecipients) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		OrderRecipientsMapper mapper = sqlSession.getMapper(OrderRecipientsMapper.class);
		int count = this.getOrderRecipientsCountByUser(orderRecipients.getRecipientsUser());
		if (count < 10) {//地址数小于10，插入
			//如果要设为默认地址，需要将其他地址的recipientsChecked置为0，然后进行插入操作
			if (orderRecipients.getRecipientsChecked() == 1) {
				this.updateRecipientsCheckedByUser(orderRecipients.getRecipientsUser());
			}
			int res = mapper.insertOrderRecipients(orderRecipients);
			sqlSession.commit();
			return res;
		} else {
			return -1;
		}
	}

	@Override
	public int getOrderRecipientsCountByUser(int recipientsUser) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		OrderRecipientsMapper mapper = sqlSession.getMapper(OrderRecipientsMapper.class);
		int count = mapper.getOrderRecipientsCountByUser(recipientsUser);
		return count;
	}

	@Override
	public int updateRecipientsCheckedByUser(int recipientsUser) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		OrderRecipientsMapper mapper = sqlSession.getMapper(OrderRecipientsMapper.class);
		int res = mapper.updateRecipientsCheckedByUser(recipientsUser);
		sqlSession.commit();
		return res;
	}

}
