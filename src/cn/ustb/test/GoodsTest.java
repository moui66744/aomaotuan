package cn.ustb.test;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Goods;
import cn.ustb.mapper.GoodsMapper;
import cn.ustb.service.GoodsService;
import cn.ustb.service.GoodsServiceImpl;
import cn.ustb.util.MybatisUtil;

public class GoodsTest {
	public static void main(String[] args) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
		ArrayList<Goods> allGoodsAndGoodsType = mapper.getAllGoodsAndGoodsType();
		for (Goods goods : allGoodsAndGoodsType) {
			System.out.println(goods);
		}
		
//		GoodsService service = new GoodsServiceImpl();
//		PageInfo<Goods> pageInfo = service.getPageGoodsByPageNum(1);
//		System.out.println(pageInfo);
		
//		SqlSession sqlSession = MybatisUtil.getSqlSession();
//		GoodsMapper mapper = sqlSession.getMapper(GoodsMapper.class);
//		Goods goodsByGoodsId = mapper.getGoodsByGoodsId(2);
//		System.out.println(goodsByGoodsId);
	}
}
