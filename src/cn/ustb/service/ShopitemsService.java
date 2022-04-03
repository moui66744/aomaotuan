package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.bean.Shopitems;

public interface ShopitemsService {

	public int insertShopitems(Shopitems shopitems);
	public ArrayList<Shopitems> getAllShopitemsAndGoods(int itemUser);
	public int deleteShopitems(int itemId);
	public Shopitems getOneShopitemsAndGoods(int itemId);
	public int getShopitemsCount(int itemUser);
	public int updateShopitems(Shopitems shopitems);
}
