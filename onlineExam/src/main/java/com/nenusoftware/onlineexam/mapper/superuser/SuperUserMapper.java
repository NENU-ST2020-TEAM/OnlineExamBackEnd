package com.nenusoftware.onlineexam.mapper.superuser;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * @author : kongyy
 * @time : 2020/6/16 21:35
 */

@Mapper
@Repository
public interface SuperUserMapper {

    /**
     * 修改用户权限
     * @param userId
     * @return
     * @throws Exception
     */
    public boolean updateUserPower(@Param("userId") int userId) throws Exception;


    /**
     * 删除用户
     * @param userId
     * @return
     * @throws Exception
     */
    public boolean deleteUser(@Param("userId") int userId) throws Exception;

}
