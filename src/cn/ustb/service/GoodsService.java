package cn.ustb.service;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;

public interface GoodsService {
	public PageInfo<Goods> getPageGoodsByPageNum(int pageNum);
	public PageInfo<Goods> deleteGoodsByGoodsId(int goodsId, int remove_pageNum);
	public int insertGoods(Goods goods);
	public Goods getGoodsByGoodsId(int goodsId);
	public int updateGoods(Goods goods);
	public PageInfo<Goods> getListPageGoodsByPageNum(int pageNum);
	public PageInfo<Goods> getGoodsByGoodsPrice(double left, double right);
	public PageInfo<Goods> getGoodsByGoodsBrand(String brand);
	public PageInfo<Goods> getOrderedGoodsByGoodsPrice(int pageNum, String order);
	public PageInfo<Goods> getGoodsByGoodsTypeId(int goodsTypeId);
	public PageInfo<Goods> getGoodsByTypePid(int typePid);
}
