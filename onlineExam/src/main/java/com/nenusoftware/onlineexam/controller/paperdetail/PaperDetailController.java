package com.nenusoftware.onlineexam.controller.paperdetail;

import com.nenusoftware.onlineexam.entity.paperdetail.PaperDetail;
import com.nenusoftware.onlineexam.service.paperdetail.PaperDetailService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: PaperDetailController层（与前端页面进行交互）
 * @Date: 10:54 2019/5/3
 */
@CrossOrigin(allowCredentials = "true")
@Controller
@RequestMapping("/paperDetail")
public class PaperDetailController {

    @Resource
    PaperDetailService paperDetailService;

    /**
     * 列出所有试卷详细信息
     * @return 返回List形式的试卷详细信息
     */
    @ResponseBody
    @RequestMapping("/listAllPaperDetail")
    public List listAllPaperDetail(){
        List paperDetailList = new ArrayList<>();
        try {
            paperDetailList = paperDetailService.listAllPaperDetail();
        }catch (Exception e){
            e.printStackTrace();
        }
        return paperDetailList;
    }

    /**
     * 根据试卷编号列出试卷详细信息
     * @param paperIdStr 试卷编号
     * @return 返回List形式的试卷详细信息
     */
    @ResponseBody
    @RequestMapping("/listPaperDetailByPaperId")
    public List listPaperDetailByPaperId(String paperIdStr){
        int paperId = Integer.parseInt(paperIdStr);
        List paperDetailList = new ArrayList<>();

        try {
            paperDetailList = paperDetailService.listPaperDetailByPaperId(paperId);
        }catch (Exception e){
            e.printStackTrace();
        }
        return paperDetailList;
    }

    /**
     * 增加试卷详细信息
     * @param paperIdStr 试卷编号
     * @param exerciseTypeStr 题目类型
     * @param exerciseIdStr 题目Id
     * @param contentStr 题目内容
     * @param typeAStr 选项A
     * @param typeBStr 选项B
     * @param typeCStr 选项C
     * @param typeDStr 选项D
     * @param answerStr 题目答案
     * @param scoreStr 题目分值
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/addPaperDetail")
        public void addPaperDetail(String paperIdStr, String exerciseTypeStr, String exerciseIdStr, String contentStr, String typeAStr, String typeBStr, String typeCStr, String typeDStr, String answerStr, String scoreStr) throws Exception{

        PaperDetail paperDetail = new PaperDetail();

        int score = Integer.parseInt(scoreStr);
        int exerciseType = Integer.parseInt(exerciseTypeStr);
        int paperId = Integer.parseInt(paperIdStr);
        int exerciseId = Integer.parseInt(exerciseIdStr);

        paperDetail.setPaperId(paperId);
        paperDetail.setExerciseId(exerciseId);
        paperDetail.setContent(contentStr);

        if(exerciseType == 0){
            paperDetail.setTypeA(typeAStr);
            paperDetail.setTypeB(typeBStr);
            paperDetail.setTypeC(typeCStr);
            paperDetail.setTypeD(typeDStr);
            paperDetail.setExerciseType("单选题");
        }else if(exerciseType == 1){
            paperDetail.setTypeA(typeAStr);
            paperDetail.setTypeB(typeBStr);
            paperDetail.setTypeC(typeCStr);
            paperDetail.setTypeD(typeDStr);
            paperDetail.setExerciseType("多选题");
        }else{
            paperDetail.setTypeA(typeAStr);
            paperDetail.setTypeB(typeBStr);
            paperDetail.setExerciseType("判断题");
        }

        paperDetail.setAnswer(answerStr);
        paperDetail.setScore(score);

        paperDetailService.addPaperDetail(paperDetail);
    }

    /**
     * 删除试卷详细信息
     * @param paperIdStr 试卷详细信息编号
     */
    @ResponseBody
    @RequestMapping("/deletePaperDetail")
    public void deletePaperDetail(String paperIdStr){
        int paperId = Integer.parseInt(paperIdStr);
        try {
            paperDetailService.deletePaperDetail(paperId);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("删除试卷题目信息失败!");
        }
    }

    /**
     * 修改试卷详细信息
     * @param paperDetailIdStr 试卷详细信息编号
     * @param paperIdStr 试卷编号
     * @param exerciseIdStr 题目编号
     * @param contentStr 题目内容
     * @param typeAStr 选项A
     * @param typeBStr 选项B
     * @param typeCStr 选项C
     * @param typeDStr 选项D
     * @param answerStr 题目答案
     * @param scoreStr 题目分值
     */
    @ResponseBody
    @RequestMapping("/updatePaperDetail")
    public void updatePaperDetail(String paperDetailIdStr, String paperIdStr, String exerciseIdStr, String contentStr, String typeAStr, String typeBStr, String typeCStr, String typeDStr, String answerStr, String scoreStr){
        int paperDetailId = Integer.parseInt(paperDetailIdStr);
        int paperId = Integer.parseInt(paperIdStr);
        int exerciseId = Integer.parseInt(exerciseIdStr);
        int score = Integer.parseInt(scoreStr);
        try {
            PaperDetail paperDetail = new PaperDetail();

            paperDetail.setPaperId(paperId);
            paperDetail.setExerciseId(exerciseId);
            paperDetail.setContent(contentStr);
            paperDetail.setTypeA(typeAStr);
            paperDetail.setTypeB(typeBStr);
            paperDetail.setTypeC(typeCStr);
            paperDetail.setTypeD(typeDStr);
            paperDetail.setAnswer(answerStr);
            paperDetail.setScore(score);

            paperDetailService.deletePaperDetail(paperDetailId);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("修改试卷题目信息失败!");
        }
    }

    /**
     * 模糊查询（查询试卷题目的内容或类型）
     * @param keyStr 输入查询的关键字
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("queryPaperDetail")
    public List queryPaperDetail(String keyStr) throws Exception {
        List<PaperDetail> paperDetailList = new ArrayList<>();
        paperDetailList = paperDetailService.queryPaperDetail(keyStr);
        return paperDetailList;
    }

    /**
     * 根据题目类型列出试卷详细信息
     * @param exerciseTypeStr 题目类型
     */
    @ResponseBody
    @RequestMapping("/queryExerciseByTypes")
    public void queryExerciseByTypes(String exerciseTypeStr){
        try {
            paperDetailService.queryExerciseByTypes(exerciseTypeStr);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("根据题目类型列出题目信息失败!");
        }
    }
}
