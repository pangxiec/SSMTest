import com.test.entity.User;
import com.test.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author pangxie
 * @2020/7/21
 * 配置spring和junit整合，junit启动时加载springIOC容器 spring-test,junit
 */
@RunWith(SpringJUnit4ClassRunner.class)
// 告诉junit spring配置文件
@ContextConfiguration({"classpath:applicationContext.xml"})
public class SpringMybatisTest
{
    @Autowired
    private UserService userService;

    //@Test
    public void testSelectAllUser()
    {
        List<User> users = userService.selectAllUser();
        for (User us : users)
        {
            System.out.println(us.toString());
        }
    }

    @Test
    public void testAdd()
    {
        User user = new User();
        user.setUsername("Alen");
        user.setPassword("abc");
        user.setSex("female");
        user.setAge(18);
        userService.addUser(user);
    }


}
