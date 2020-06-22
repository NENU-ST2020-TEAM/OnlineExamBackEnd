package com.nenusoftware.onlineexam.service.paperdetail.impl;


import com.alibaba.fastjson.JSONArray;
import com.nenusoftware.onlineexam.entity.answer.Answer;
import com.nenusoftware.onlineexam.entity.paper.Paper;
import com.nenusoftware.onlineexam.entity.paperdetail.PaperDetail;
import com.nenusoftware.onlineexam.entity.score.Score;
import com.nenusoftware.onlineexam.entity.wrong.Wrong;
import com.nenusoftware.onlineexam.mapper.paperdetail.PaperDetailMapper;
import com.nenusoftware.onlineexam.service.paper.PaperService;
import com.nenusoftware.onlineexam.service.paperdetail.PaperDetailService;
import com.nenusoftware.onlineexam.service.score.ScoreService;
import com.nenusoftware.onlineexam.service.wrong.WrongService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: PaperDetailService的底层实现方法
 * @Date: 10:33 2019/5/14
 */
@Service
public class PaperDetailServiceImpl implements PaperDetailService {

    @Resource
    PaperDetailMapper paperDetailMapper;

    @Resource
    PaperService paperService;

    @Resource
    ScoreService scoreService;

    @Resource
    WrongService wrongService;

    /**
     * 列出所有试卷详细信息
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> listAllPaperDetail() throws Exception{
        List<PaperDetail> paperDetailList = Collections.emptyList();
        paperDetailList = paperDetailMapper.listAllPaperDetail();
        for (PaperDetail detail : paperDetailList) {
            PaperDetail paperDetail = new PaperDetail();
            paperDetail = detail;
            if(paperDetail.getExerciseType().equals("简答题")){
                String str, str1, str2, str3;
                str1 = paperDetail.getAnswer();
                str2 = paperDetail.getAnswer2();
                str3 = paperDetail.getAnswer3();
                str = "得分点为：" + str1 + " " + str2 + " " + str3;
                paperDetail.setAnswer(str);
            }
        }
        return paperDetailList;
    }

    /**
     * 根据试卷编号列出试卷详细信息
     * @param paperId 试卷编号
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> listPaperDetailByPaperId(int paperId) throws Exception{
        List<PaperDetail> paperDetailList = Collections.emptyList();
        paperDetailList = paperDetailMapper.listPaperDetailByPaperId(paperId);
        for (PaperDetail detail : paperDetailList) {
            PaperDetail paperDetail = new PaperDetail();
            paperDetail = detail;
            String str, str1, str2, str3;
            str1 = paperDetail.getAnswer();
            str2 = paperDetail.getAnswer2();
            str3 = paperDetail.getAnswer3();
            str = "关键字为：" + str1 + " " + str2 + " " + str3;
            paperDetail.setAnswer(str);
        }
        return paperDetailList;
    }

    /**
     * 增加试卷详细信息
     * @param paperDetail 试卷详细信息实体
     * @throws Exception
     */
    @Override
    public void addPaperDetail(PaperDetail paperDetail) throws Exception {
        paperDetailMapper.addPaperDetail(paperDetail);
    }

    /**
     * 删除试卷详细信息
     * @param paperDetailId 试卷详细信息编号
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    @Override
    public boolean deletePaperDetail(int paperDetailId) throws Exception{
        return paperDetailMapper.deletePaperDetail(paperDetailId);
    }

    /**
     * 修改试卷详细信息
     * @param paperDetail 试卷详细信息实体
     * @throws Exception
     */
    @Override
    public void updatePaperDetail(PaperDetail paperDetail) throws Exception{
        paperDetailMapper.updatePaperDetail(paperDetail);
    }

    /**
     * 模糊查询（查询试卷题目的内容或类型）
     * @param keyWord 输入查询的关键字
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> queryPaperDetail(String keyWord) throws Exception{
        List<PaperDetail> paperDetaillist = Collections.emptyList();
        keyWord = "%" + keyWord + "%";
        paperDetaillist = paperDetailMapper.queryPaperDetail(keyWord);
        return paperDetaillist;
    }

    /**
     * 根据题目类型列出试卷详细信息
     * @param exerciseType 题目类型
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> queryExerciseByTypes(String exerciseType) throws Exception{
        List<PaperDetail> paperDetailList = Collections.emptyList();
        paperDetailList = paperDetailMapper.queryExerciseByTypes(exerciseType);
        for (PaperDetail detail : paperDetailList) {
            PaperDetail paperDetail = new PaperDetail();
            paperDetail = detail;
            if(paperDetail.getExerciseType().equals("简答题")){
                String str, str1, str2, str3;
                str1 = paperDetail.getAnswer();
                str2 = paperDetail.getAnswer2();
                str3 = paperDetail.getAnswer3();
                str = "得分点为：" + str1 + " " + str2 + " " + str3;
                paperDetail.setAnswer(str);
            }
        }
        return paperDetailList;
    }

    /**
     * 根据试卷Id查询题目选项
     * @param paperDetailId 试卷详细信息编号
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> queryExerciseItemsById(int paperDetailId) throws Exception{
        List<PaperDetail> paperDetailItemsList = Collections.emptyList();
        paperDetailItemsList = paperDetailMapper.queryExerciseItemsById(paperDetailId);
        return paperDetailItemsList;
    }

    /**
     * 根据试题内容获取题目编号
     * @param content 试题内容
     * @return 题目编号
     * @throws Exception
     */
    @Override
    public PaperDetail queryIdByContent(@Param("content") String content) throws Exception{
        return paperDetailMapper.queryIdByContent(content);
    }

    @Override
    public PaperDetail queryQuestion(int paperDetailId) throws Exception{
        List<PaperDetail> paperDetailItemsList = Collections.emptyList();
        PaperDetail paperDetail = new PaperDetail();
        paperDetailItemsList = paperDetailMapper.queryQuestion(paperDetailId);
        paperDetail = paperDetailItemsList.get(0);
        return paperDetail;
    }

    @Override
    public int judgeQuestion(JSONArray jsonArray, int userId) throws Exception{
        int result = 0;
        String paperIdStr = jsonArray.getJSONObject(0).getString("paperId");
        int paperId = Integer.parseInt(paperIdStr);
        try{
            for(int i=0;i<jsonArray.size();i++){
                Answer answer = new Answer();
                PaperDetail paperDetail = new PaperDetail();
                String pdid = jsonArray.getJSONObject(i).getString("paperDetailId");
                String solution = jsonArray.getJSONObject(i).getString("solution");
                int paperDetailId = Integer.parseInt(pdid);
                paperDetail = queryQuestion(paperDetailId);
                String type = paperDetail.getExerciseType();
                answer.setUserId(userId);
                answer.setSolution(solution);
                answer.setRight(paperDetail.getAnswer());
                answer.setScore(paperDetail.getScore());
                int score = paperDetail.getScore();
                if(type.equals("简答题")){
                    int index1 = solution.indexOf(paperDetail.getAnswer());
                    int index2 = solution.indexOf(paperDetail.getAnswer2());
                    int index3 = solution.indexOf(paperDetail.getAnswer3());
                    int cont = 0;
                    int keycont = 1;
                    if(!paperDetail.getAnswer2().equals("")){
                        keycont++;
                    }
                    if(!paperDetail.getAnswer3().equals("")){
                        keycont++;
                    }
                    if(index1 != -1){
                        cont++;
                    }
                    if(index2 != -1 && !paperDetail.getAnswer2().equals("")){
                        cont++;
                    }
                    if(index3 != -1 && !paperDetail.getAnswer3().equals("")){
                        cont++;
                    }
                    int nowScore = (cont * score / keycont);
                    result += nowScore;
                    if(nowScore < score){
                        Wrong wrong = new Wrong();
                        wrong.setUserId(userId);
                        wrong.setPaperId(paperId);
                        wrong.setPaperDetailId(paperDetailId);
                        wrong.setAnswer(solution);
                        wrong.setScore(score);
                        wrong.setNowScore(nowScore);
                        wrong.setRight("关键字为："+paperDetail.getAnswer()+" "+paperDetail.getAnswer2()+" "+paperDetail.getAnswer3());
                        wrongService.addWrong(wrong);
                    }
                }
                else{
                    if(answer.getSolution().equals(answer.getRight())){
                        result += score;
                    }
                    else{
                        Wrong wrong = new Wrong();
                        wrong.setUserId(userId);
                        wrong.setPaperId(paperId);
                        wrong.setPaperDetailId(paperDetailId);
                        wrong.setAnswer(solution);
                        wrong.setRight(paperDetail.getAnswer());
                        wrong.setScore(score);
                        wrong.setNowScore(0);
                        wrongService.addWrong(wrong);
                    }
                }
            }
            Paper paper = paperService.queryPaperNameById(paperId);
            String paperName = paper.getPaperName();
            Score score = new Score();
            score.setUserId(userId);
            score.setMark(result);
            score.setPaperId(paperId);
            score.setPaperName(paperName);
            scoreService.addScore(score);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return result;
    }

//    /**
//     * 根据试卷编号列出试卷详细信息
//     * @param paperId 试卷编号
//     * @return 返回List形式的试卷详细信息
//     * @throws Exception
//     */
//    @Override
//    public List<PaperDetail> listPublishPaperByPaperId(int paperId, int status) throws Exception{
//        List<PaperDetail> paperDetailList = paperDetailMapper.listPublishPaperByPaperId(paperId, status);
//        for (PaperDetail detail : paperDetailList) {
//            PaperDetail paperDetail = new PaperDetail();
//            paperDetail = detail;
//            String str, str1, str2, str3;
//            str1 = paperDetail.getAnswer();
//            str2 = paperDetail.getAnswer2();
//            str3 = paperDetail.getAnswer3();
//            str = "关键字为：" + str1 + " " + str2 + " " + str3;
//            paperDetail.setAnswer(str);
//        }
//        return paperDetailList;
//    }
}
