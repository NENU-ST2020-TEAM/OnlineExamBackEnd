package com.nenusoftware.onlineexam.controller.paperdetail;

import com.alibaba.fastjson.JSONArray;
import com.nenusoftware.onlineexam.entity.paperdetail.PaperDetail;
import com.nenusoftware.onlineexam.service.paperdetail.PaperDetailService;
import io.swagger.models.auth.In;
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
     * 列出试题库所有试题详细信息
     * @return 返回 List形式的试卷详细信息
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
     * 增加试卷试题详细信息
     * @param exerciseTypeStr 题目类型(0:选择题，1：判断题，2：填空题：3：主观题 )
     * @param contentStr 题目内容
     * @param typeAStr 选项 A
     * @param typeBStr 选项 B
     * @param typeCStr 选项 C
     * @param typeDStr 选项 D
     * @param answerStr 题目答案
     * @param scoreStr 题目分值
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/addPaperDetail")
    public void addPaperDetail(String exerciseTypeStr,String contentStr, String typeAStr, String typeBStr, String typeCStr, String typeDStr, String answerStr, String answer2, String answer3, String scoreStr) throws Exception{
        PaperDetail paperDetail = new PaperDetail();
        int exerciseType = Integer.parseInt(exerciseTypeStr);
        //int exerciseId = Integer.parseInt(exerciseIdStr);
        int score = Integer.parseInt(scoreStr);
        paperDetail.setContent(contentStr);
        //paperDetail.setExerciseId(exerciseId);
        if(exerciseType == 0){
            paperDetail.setTypeA(typeAStr);
            paperDetail.setTypeB(typeBStr);
            paperDetail.setTypeC(typeCStr);
            paperDetail.setTypeD(typeDStr);
            paperDetail.setExerciseType("选择题");
        }else if(exerciseType == 1){
            paperDetail.setTypeA(typeAStr);
            paperDetail.setTypeB(typeBStr);
            paperDetail.setExerciseType("判断题");
        }else if(exerciseType == 2){
            paperDetail.setTypeA(typeAStr);
            paperDetail.setExerciseType("填空题");
        }else if(exerciseType == 3){
            paperDetail.setTypeA(typeAStr);
            paperDetail.setExerciseType("简答题");
        }
        paperDetail.setAnswer(answerStr);
        paperDetail.setAnswer2(answer2);
        paperDetail.setAnswer3(answer3);
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
    public void updatePaperDetail(String paperDetailIdStr, String contentStr, String typeAStr, String typeBStr, String typeCStr, String typeDStr, String answerStr, String scoreStr){
        int paperDetailId = Integer.parseInt(paperDetailIdStr);
//        int paperId = Integer.parseInt(paperIdStr);
//        int exerciseId = Integer.parseInt(exerciseIdStr);
        int score = Integer.parseInt(scoreStr);
        try {
            PaperDetail paperDetail = new PaperDetail();

//            paperDetail.setPaperId(paperId);
//            paperDetail.setExerciseId(exerciseId);
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

    /**
     * 前端传回做题信息，进行判分，并将错误的题目存入错题集中
     * @param jsonString
     * @param userIdStr
     * @param paperIdStr
     * @return
     */
    @ResponseBody
    @RequestMapping("/judgeQuestion")
    public int judgeQuestion(String jsonString, String userIdStr, String paperIdStr){
        int result = 0;
        //String jsonString = "[{\"answer\":\"后置双摄\",\"paperDetailId\":\"24\"}, {\"answer\":\"A\",\"paperDetailId\":\"11\"},{\"answer\":\"错\",\"paperDetailId\":\"3\"}]";
        try{
            int userId = Integer.parseInt(userIdStr);
            int paperId = Integer.parseInt(paperIdStr);
            JSONArray jsonArray = JSONArray.parseArray(jsonString);
            result = paperDetailService.judgeQuestion(jsonArray, userId, paperId);

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("得出成绩失败");
        }
        return result;
    }
}
