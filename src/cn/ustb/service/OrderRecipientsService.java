package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.OrderRecipients;

public interface OrderRecipientsService {
	//zhq
	public ArrayList<OrderRecipients> getAllOrderRecipientsByUserId(int userId);
	public OrderRecipients getOrderRecipientsByRecipientsId(int recipientsId);
	//why
	public int deleteOrderRecipientsById(int recipientsId);
	public int insertOrderRecipients(OrderRecipients orderRecipients);
	public int getOrderRecipientsCountByUser(int recipientsUser);
	public int updateRecipientsCheckedByUser(int recipientsUser);
}
