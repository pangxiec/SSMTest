package com.test.service.impl;

import com.test.entity.User;
import com.test.mapper.UserMapper;
import com.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author pangxie
 * @2020/7/21
 * 将当前类 注释为一个 Spring 的 bean
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService
{
    //自动注入
    @Autowired
    public UserMapper userMapper;

    //下面是 UserService 接口 所有方法的具体实现
    public User login(User user) {
        return userMapper.selectLogin(user);
    }

    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }

    public void addUser(User user) {
        userMapper.addUser(user);
    }

    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    public void deleteUser(Integer id) {
        userMapper.deleteUser(id);
    }
}
