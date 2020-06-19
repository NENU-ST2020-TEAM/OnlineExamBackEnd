package com.nenusoftware.onlineexam.connect;

import com.nenusoftware.onlineexam.entity.connect.Connect;
import com.nenusoftware.onlineexam.service.connect.ConnectService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * @Author: Liangll
 * @Description: 测试 ConnectService的各类方法
 * @Date: 11:44 2019/5/3
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ConnectServiceTest {

    @Autowired
    ConnectService connectService;

    @Test
    public void testListAllConnect() throws Exception{
        int paperId = 2;
        String choiceType = "选择题";
        String judgeType = "判断题";
        List<Connect> choiceList = null;
        List<Connect> judgeList = null;
        System.out.println(connectService.listAllConnect(paperId, choiceType));
        System.out.println(connectService.listAllConnect(paperId, judgeType));
        choiceList = connectService.listAllConnect(paperId, choiceType);
        judgeList = connectService.listAllConnect(paperId, judgeType);
        choiceList.addAll(judgeList);
        System.out.println(choiceList);
    }

    @Test
    public void testAddConnect() throws Exception {
        int paperId = 1, paperDetailId = 10;
        Connect connect = new Connect();
        connect.setPaperId(paperId);
        connect.setPaperDetailId(paperDetailId);
        System.out.println(connectService.addConnect(connect));
    }
}
