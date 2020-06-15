package com.nenusoftware.onlineexam.controller.paper;

import com.nenusoftware.onlineexam.entity.paper.Paper;
import com.nenusoftware.onlineexam.service.paper.PaperService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: PaperController层（与前端页面进行交互）
 * @Date: 15:54 2019/5/5
 */
@CrossOrigin(allowCredentials = "true")
@Controller
@RequestMapping("/paper")
public class PaperController {

    @Resource
    PaperService paperService;

    /**
     * 列出所有试卷
     * @return 返回List形式的试卷信息
     */
    @RequestMapping("/listAllPaper")
    @ResponseBody
    public List<Paper> listAllPaper(){
        List<Paper> paperList = null;
        try {
            paperList = paperService.listAllPaper();
        }catch (Exception e){
            e.printStackTrace();
        }
        return paperList;
    }

    /**
     * 增加试卷
     * @param paperName 试卷名称
     */
    @ResponseBody
    @RequestMapping("/addPaper")
    public void addPaper(String paperName){
        try {
            Paper paper = new Paper();
            paper.setPaperName(paperName);
            paperService.addPaper(paper);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("增加试卷失败！");
        }
    }

    /**
     * 删除试卷
     * @param paperIdStr 试卷编号
     */
    @ResponseBody
    @RequestMapping("/deletePaper")
    public void deletePaper(String paperIdStr) {
        int paperId = Integer.parseInt(paperIdStr);
        try {
            paperService.deletePaper(paperId);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("删除试卷失败！");
        }
    }

    /**
     * 修改试卷
     * @param paperIdStr 试卷编号
     * @param paperName 试卷名称
     */
    @ResponseBody
    @RequestMapping("/updatePaper")
    public void updatePaper(String paperIdStr, String paperName) {
        int paperId = Integer.parseInt(paperIdStr);
        try {
            Paper paper = new Paper();

            paper.setPaperId(paperId);
            paper.setPaperName(paperName);
            paperService.updatePaper(paper);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("修改试卷失败！");
        }
    }

    /**
     * 模糊查询（查询试卷名称）
     * @param keyStr 输入查询的关键字
     */
    @ResponseBody
    @RequestMapping("/queryPaperName")
    public List<Paper> queryPaperName(String keyStr){
        List<Paper> paperList = null;
        try {
            paperList = paperService.queryPaperName(keyStr);
        }catch (Exception e){
            e.printStackTrace();
        }
        return paperList;
    }
}
