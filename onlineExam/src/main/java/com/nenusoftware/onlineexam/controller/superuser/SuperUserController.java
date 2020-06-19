package com.nenusoftware.onlineexam.controller.superuser;

import com.nenusoftware.onlineexam.service.superuser.SuperUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author : kongyy
 * @time : 2020/6/18 15:52
 */
@CrossOrigin(allowCredentials = "true")
@Controller
@RequestMapping("/superUser")
public class SuperUserController {

    @Resource
    SuperUserService superUserService;


    /**
     * 根据用户id删除用户
     * @param userIdStr
     */
    @ResponseBody
    @RequestMapping("/deleteUser")
    public void deleteUser(String userIdStr){
        int userId = Integer.parseInt(userIdStr);
        try {
            superUserService.deleteUser(userId);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("删除失败！");
        }
    }

    /**
     * 根据用户id更改用户权限，如果为教师，则更改为管理员，如果是管理员，则改为教师，学生权限不能改变
     * @param userIdStr
     */
    @ResponseBody
    @RequestMapping("/updateUserPower")
    public void updateUserPower(String userIdStr){
        int userId = Integer.parseInt(userIdStr);
        try {
            superUserService.updateUserPower(userId);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("更新失败！");
        }
    }
}
