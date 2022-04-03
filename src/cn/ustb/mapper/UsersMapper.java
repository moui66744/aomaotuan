package cn.ustb.mapper;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.Users;

public interface UsersMapper {
	public int changePass(@Param("userName")String userName,@Param("newPassword")String newPassword);
	public Users getUsersByUserPhoneAndUserPass(@Param("userPhone")String userPhone, @Param("userPass")String userPass);
	public int insertUsers(@Param("users")Users users);
	
}
