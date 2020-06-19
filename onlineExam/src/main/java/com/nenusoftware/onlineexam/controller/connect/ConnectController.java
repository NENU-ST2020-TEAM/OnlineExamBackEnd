package com.nenusoftware.onlineexam.controller.connect;

import com.nenusoftware.onlineexam.entity.connect.Connect;
import com.nenusoftware.onlineexam.service.connect.ConnectService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: ConnectController层（与前端页面进行交互）
 * @Date: 15:54 2020/6/18
 */
@CrossOrigin(allowCredentials = "true")
@Controller
@RequestMapping("/connect")
public class ConnectController {

    @Resource
    ConnectService connectService;

    /**
     * 通过试卷编号列出试卷详细信息
     * @param paperIdStr 试卷编号
     * @return 返回 List形式的试卷详细信息
     */
    @RequestMapping("/listAllConnect")
    @ResponseBody
    public List<Connect> listAllConnect(String paperIdStr){
        int paperId = Integer.parseInt(paperIdStr);

        List<Connect> choiceList = null;
        List<Connect> judgeList = null;
        List<Connect> completionList = null;
        List<Connect> shortAnswerList = null;
        String choiceType = "选择题";
        String judgeType = "判断题";
        String completionType = "填空题";
        String shortAnswerType = "简答题";
        try {
            choiceList = connectService.listAllConnect(paperId, choiceType);
            judgeList = connectService.listAllConnect(paperId, judgeType);
            completionList = connectService.listAllConnect(paperId, completionType);
            shortAnswerList = connectService.listAllConnect(paperId, shortAnswerType);
            System.out.println("通过试卷编号列出试卷详细信息成功！");
        }catch (Exception e){
            e.printStackTrace();
        }
        assert judgeList != null;
        choiceList.addAll(judgeList);
        assert completionList != null;
        choiceList.addAll(completionList);
        assert shortAnswerList != null;
        choiceList.addAll(shortAnswerList);
        return choiceList;
    }

    /**
     * 增加试卷详细信息
     * @param paperIdStr 试卷编号
     * @param paperDetailIdStr 试题编号
     * @return
     */
    @ResponseBody
    @RequestMapping("/addConnect")
    public void addConnect(String paperIdStr, String paperDetailIdStr){
        int paperId = Integer.parseInt(paperIdStr);
        int paperDetailId = Integer.parseInt(paperDetailIdStr);
        try {
            Connect connect = new Connect();
            connect.setPaperId(paperId);
            connect.setPaperDetailId(paperDetailId);
            connectService.addConnect(connect);
            System.out.println("增加试卷详细信息成功！");
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("增加试卷详细信息！");
        }
    }
}
