package com.nenusoftware.onlineexam.service.superuser.impl;

import com.nenusoftware.onlineexam.mapper.superuser.SuperUserMapper;
import com.nenusoftware.onlineexam.mapper.user.UserMapper;
import com.nenusoftware.onlineexam.service.superuser.SuperUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author : kongyy
 * @time : 2020/6/16 21:40
 */
@Service
public class SuperUserServiceImpl implements SuperUserService {

    @Resource
    SuperUserMapper superUserMapper;

    @Resource
    UserMapper userMapper;

    /**
     * 修改用户权限
     * @param userId
     * @return
     * @throws Exception
     */
    @Override
    public boolean updateUserPower(int userId) throws Exception{
        return superUserMapper.updateUserPower(userId);
    }

    /**
     * 删除用户
     * @param userId
     * @return
     * @throws Exception
     */
    @Override
    public boolean deleteUser(int userId) throws Exception{
        return superUserMapper.deleteUser(userId);
    }

}
