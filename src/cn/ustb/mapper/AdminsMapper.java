package cn.ustb.mapper;

import org.apache.ibatis.annotations.Param;

import cn.ustb.bean.Admins;

public interface AdminsMapper {
	public Admins getAdminByAdminNameAndAdminPass(@Param("adminName")String adminName, @Param("adminPass")String adminPass);
}
