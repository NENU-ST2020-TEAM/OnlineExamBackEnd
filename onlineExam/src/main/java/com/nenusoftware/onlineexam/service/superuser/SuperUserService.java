package com.nenusoftware.onlineexam.service.superuser;

/**
 * @author : kongyy
 * @time : 2020/6/16 21:39
 */
public interface SuperUserService {

    /**
     * 修改用户权限
     * @param userId
     * @return
     * @throws Exception
     */
    public boolean updateUserPower(int userId) throws Exception;

    /**
     * 删除用户
     * @param userId
     * @return
     * @throws Exception
     */
    public boolean deleteUser(int userId) throws Exception;
}
