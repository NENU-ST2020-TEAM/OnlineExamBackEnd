package com.nenusoftware.onlineexam.service.user;

import com.nenusoftware.onlineexam.entity.user.User;

import java.util.List;

/**
 * @Author:Liangll
 * @Description: UserService的接口层
 * @Date: 10:52 2019/5/5
 */
public interface UserService {

    /**
     * 判断用户输入密码是否正确
     * @param username 用户名
     * @param password 用户密码
    * @return 返回根据用户名与用户密码查询后的信息
     * @throws Exception
     */
    public List<User> checkPassword(String username, String password) throws Exception;

    /**
     * 列出所有用户信息
     * @return 返回List形式的用户信息
     * @throws Exception
     */
    public List<User> listAllUser() throws Exception;

    /**
     * 增加用户（注册方法）
     * @param user 用户实体
     * @return 注册成功返回true，注册失败返回false
     * @throws Exception
     */
    public boolean addUser(User user) throws Exception;

    /**
     * 删除用户
     * @param userId 用户编号
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    public boolean deleteUser(int userId) throws Exception;

    /**
     * 修改用户
     * @param user 用户实体
     * @return 修改成功返回true，修改失败返回false
     * @throws Exception
     */
    public boolean updateUser(User user) throws Exception;

    /**
     * 修改用户权限（用于后台管理）
     * @param userId 用户编号
     * @return 修改成功返回true，修改失败返回false
     * @throws Exception
     */
    public boolean updatePower(int userId) throws Exception;

    /**
     * 根据用户名查询数据信息
     * @param username 用户名
     * @return 返回根据用户名查询后的信息
     * @throws Exception
     */
    public User queryByName(String username) throws Exception;

    /**
     * 根据用户名得到用户唯一编号
     * @param username 用户名
     * @return 返回User实体
     * @throws Exception
     */
    public User queryIdByUsername(String username) throws Exception;

    /**
     * 根据用户编号列出用户所有信息
     * @param userId 用户编号
     * @return 返回List形式的用户信息
     * @throws Exception
     */
    public List<User> listUserById(int userId) throws Exception;

}
