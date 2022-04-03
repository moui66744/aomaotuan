package cn.ustb.test;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ustb.bean.Shopitems;
import cn.ustb.service.ShopitemsService;
import cn.ustb.service.ShopitemsServiceImpl;
import cn.ustb.util.MybatisUtil;

public class ShopitemsTest {

	public static void main(String[] args) {	
		Shopitems shopitems=new Shopitems();
		shopitems.setItemGoods(1);
		shopitems.setItemId(2);
		shopitems.setItemNum(3); 
		shopitems.setItemUser(5);
		ShopitemsService service=new ShopitemsServiceImpl();
		int result = service.insertShopitems(shopitems);
		System.out.println(result);  
//		for (Goods goods : pageInfo.getList()) {
//			System.out.println(goods);
//		}
		
		
//		SqlSession sqlSession = MybatisUtil.getSqlSession();
//		AdminsMapper mapper = sqlSession.getMapper(AdminsMapper.class);
//		Admins result = mapper.getAdminsByAdminNameAndAdminPass("admin","123");
//		System.out.println(result);
	} 

}
