package com.nenusoftware.onlineexam.superuser;

import com.nenusoftware.onlineexam.service.superuser.SuperUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.DigestUtils;

/**
 * @author : kongyy
 * @time : 2020/6/16 22:11
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class SuperUserServiceTest {

    @Autowired
    SuperUserService superUserService;

    @Test
    public void testUpdateUserPower() throws Exception{
        int userId = 6;
        superUserService.updateUserPower(userId);
    }

    @Test
    public void testDeleteUser() throws Exception{
        System.out.println(superUserService.deleteUser(5));
    }

    @Test
    public void testMd5() throws Exception{
        String password = "123456";
        String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());
        System.out.println(md5Password);
    }
}
