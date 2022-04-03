package cn.ustb.test;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.Admins;
import cn.ustb.mapper.AdminsMapper;
import cn.ustb.util.MybatisUtil;

public class AdminsTest {
	public static void main(String[] args) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		AdminsMapper mapper = sqlSession.getMapper(AdminsMapper.class);
		Admins admin = mapper.getAdminByAdminNameAndAdminPass("admin", "123");
		System.out.println(admin);
	}
}
