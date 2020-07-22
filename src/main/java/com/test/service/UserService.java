package com.test.service;

import com.test.entity.User;

import java.util.List;

/**
 * @author pangxie
 * @2020/7/21
 */
public interface UserService
{
    //用户登录
    User login(User user);

    //查询全部用户
    List<User> selectAllUser();

    //新增用户
    void addUser(User user);

    //更新用户
    void updateUser(User user);

    //删除用户
    void deleteUser(Integer id);

}
