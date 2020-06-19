package com.nenusoftware.onlineexam.controller.wrong;

import com.nenusoftware.onlineexam.entity.wrong.Wrong;
import com.nenusoftware.onlineexam.service.wrong.WrongService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * @author : kongyy
 * @time : 2020/6/17 18:29
 */
@CrossOrigin(allowCredentials = "true")
@Controller
@RequestMapping("/wrong")
public class WrongController {

    @Resource
    WrongService wrongService;

    @ResponseBody
    @RequestMapping("/listWrongById")
    public List<Wrong> listWrongById(String userIdStr){
        List<Wrong> wrongList = Collections.emptyList();
        try{
            int userId = Integer.parseInt(userIdStr);
            wrongList = wrongService.listWrongByUserId(userId);
        }catch (Exception e){
            e.printStackTrace();
        }
        return wrongList;
    }

    @ResponseBody
    @RequestMapping("/deleteWrong")
    public void deleteWrong(String wrongIdStr){
        int wrongId = Integer.parseInt(wrongIdStr);
        try {
            wrongService.deleteWrong(wrongId);
            System.out.println("删除错题成功");
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("删除错题失败");
        }
    }
}
