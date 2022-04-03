package cn.ustb.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.OrderRecipients;

public interface OrderRecipientsMapper {
	public ArrayList<OrderRecipients> getAllOrderRecipientsByUserId(int userId);
	//zhq
	public OrderRecipients getOrderRecipientsByRecipientsId(int recipientsId);
	public int deleteOrderRecipientsById(int recipientsId);
	public int insertOrderRecipients(@Param("orderRecipients")OrderRecipients orderRecipients);
	public int getOrderRecipientsCountByUser(int recipientsUser);
	public int updateRecipientsCheckedByUser(int recipientsUser);
}
