package cn.ustb.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.mapper.GoodsMapper;
import cn.ustb.util.MybatisUtil;

public class GoodsServiceImpl implements GoodsService {

	@Override
	public PageInfo<Goods> getPageGoodsByPageNum(int pageNum) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		PageHelper.startPage(pageNum, 5);
		ArrayList<Goods> allGoodsAndGoodsType = mapper.getAllGoodsAndGoodsType();
		PageInfo<Goods> pageInfo = new PageInfo<>(allGoodsAndGoodsType);
		return pageInfo;
	}

	@Override
	public PageInfo<Goods> deleteGoodsByGoodsId(int goodsId, int remove_pageNum) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		int delete = mapper.deleteGoodsByGoodsId(goodsId);
		sqlSession.commit();
		PageInfo<Goods> pagaInfo = getPageGoodsByPageNum(remove_pageNum);
		return pagaInfo;
	}

	@Override
	public int insertGoods(Goods goods) {
		try {
			SqlSession sqlSession = MybatisUtil.getSqlSession();
			GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
			int insertGoods = mapper.insertGoods(goods);
			sqlSession.commit();
			if (insertGoods > 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public Goods getGoodsByGoodsId(int goodsId) {
		try {
			SqlSession sqlSession = MybatisUtil.getSqlSession();
			GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
			Goods goods = mapper.getGoodsByGoodsId(goodsId);
			return goods;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int updateGoods(Goods goods) {
		try {
			SqlSession sqlSession = MybatisUtil.getSqlSession();
			GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
			int res = mapper.updateGoods(goods);
			sqlSession.commit();
			if (res > 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	@Override
	public PageInfo<Goods> getListPageGoodsByPageNum(int pageNum) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		PageHelper.startPage(pageNum, 16);
		ArrayList<Goods> allGoodsAndGoodsType = mapper.getAllGoodsAndGoodsType();
		PageInfo<Goods> pageInfo = new PageInfo<>(allGoodsAndGoodsType);
		return pageInfo;
	}

	@Override
	public PageInfo<Goods> getGoodsByGoodsPrice(double left, double right) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		PageHelper.startPage(1, 16);
		ArrayList<Goods> goods = mapper.getGoodsByGoodsPrice(left, right);
		PageInfo<Goods> pageInfo = new PageInfo<>(goods);
		return pageInfo;
	}

	@Override
	public PageInfo<Goods> getGoodsByGoodsBrand(String brand) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		PageHelper.startPage(1, 16);
		ArrayList<Goods> goods = mapper.getGoodsByGoodsBrand(brand);
		PageInfo<Goods> pageInfo = new PageInfo<>(goods);
		return pageInfo;
	}

	@Override
	public PageInfo<Goods> getOrderedGoodsByGoodsPrice(int pageNum, String order) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		PageHelper.startPage(pageNum, 16);
		ArrayList<Goods> goods;
		if(order.equals("asc")) {
			goods = mapper.getOrderedGoodsByGoodsPriceAsc();
		}else {
			goods = mapper.getOrderedGoodsByGoodsPriceDesc();
		}
		PageInfo<Goods> pageInfo = new PageInfo<>(goods);
		return pageInfo;
	}

	@Override
	public PageInfo<Goods> getGoodsByGoodsTypeId(int goodsTypeId) {
		try {
			SqlSession sqlSession = MybatisUtil.getSqlSession();
			GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
			PageHelper.startPage(1, 16);
			ArrayList<Goods> goods = mapper.getGoodsByGoodsTypeId(goodsTypeId);
			PageInfo<Goods> pageInfo = new PageInfo<>(goods);
			return pageInfo;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public PageInfo<Goods> getGoodsByTypePid(int typePid) {
		try {
			SqlSession sqlSession = MybatisUtil.getSqlSession();
			GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
			PageHelper.startPage(1, 16);
			ArrayList<Goods> goods = mapper.getGoodsByTypePid(typePid);
			PageInfo<Goods> pageInfo = new PageInfo<>(goods);
			return pageInfo;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
