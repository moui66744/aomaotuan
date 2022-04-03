package cn.ustb.test;

import org.apache.ibatis.session.SqlSession;

import cn.ustb.bean.Users;
import cn.ustb.mapper.UsersMapper;
import cn.ustb.util.MybatisUtil;

public class UserTest {
	public static void main(String[] args) {
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		UsersMapper mapper = sqlSession.getMapper(UsersMapper.class);
	}
}
