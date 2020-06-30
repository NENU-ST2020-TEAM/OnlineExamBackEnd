//package com.nenusoftware.onlineexam.paperdetail;
//
//import com.alibaba.fastjson.JSONArray;
//import com.nenusoftware.onlineexam.entity.connect.Connect;
//import com.nenusoftware.onlineexam.entity.paper.Paper;
//import com.nenusoftware.onlineexam.entity.paperdetail.PaperDetail;
//import com.nenusoftware.onlineexam.service.paper.PaperService;
//import com.nenusoftware.onlineexam.service.paperdetail.PaperDetailService;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import java.util.List;
//
///**
// * @Author:Liangll
// * @Description: 测试PaperDetailService的各类方法
// * @Date: 11:44 2019/5/23
// */
//@RunWith(SpringRunner.class)
//@SpringBootTest
//public class PaperDetailServiceTest {
//
//    @Autowired
//    PaperService paperService;
//
//    @Autowired
//    PaperDetailService paperDetailService;
//
//    /**
//     * 列出试题库所有试题详细信息
//     * @throws Exception
//     */
//    @Test
//    public void testListAllPaperDetail() throws Exception{
//        System.out.println(paperDetailService.listAllPaperDetail());
//    }
//
//    /**
//     * 根据试卷编号列出试题详细信息
//     * @throws Exception
//     */
//    @Test
//    public void testListPaperDetailByPaperId() throws Exception{
//        String paperName = "增加试卷名称测试";
//        Paper paper = new Paper();
//        paper.setPaperName(paperName);
//        paperService.addPaper(paper);
//        int paperId = paperService.queryPaperIdByName(paperName).getPaperId();
//        System.out.println(paperId);
//        System.out.println(paperDetailService.listPaperDetailByPaperId(paperId));
//    }
//
//    /**
//     * 增加试卷试题详细信息
//     * @throws Exception
//     */
//    @Test
//    public void testAddPaperDetail() throws Exception {
//        PaperDetail paperDetail = new PaperDetail();
////        paperDetail.setPaperDetailId(2);
////        paperDetail.setPaperId(2);
//        paperDetail.setExerciseId(1);
//        paperDetail.setContent("增加题目内容");
//        paperDetail.setTypeA("");
//        paperDetail.setTypeB("");
//        paperDetail.setTypeC("");
//        paperDetail.setTypeD("");
//        paperDetail.setAnswer("测试增加正确答案");
//        paperDetail.setAnswer2("这个字段为空");
//        paperDetail.setAnswer3("这个字段为空");
//        paperDetail.setExerciseType("简答题");
//        paperDetail.setScore(12);
//        paperDetailService.addPaperDetail(paperDetail);
//    }
//
//    @Test
//    public void testDeletePaperDetail() throws Exception{
//        System.out.println(paperDetailService.deletePaperDetail(1));
//    }
//
//    @Test
//    public void testUpdatePaper() throws Exception{
//        PaperDetail paperDetail = new PaperDetail();
//        paperDetail.setPaperDetailId(36);
//        paperDetail.setContent("测试修改题目内容");
//        paperDetail.setTypeA("测试A");
//        paperDetail.setTypeB("测试B");
//        paperDetail.setTypeC("测试C");
//        paperDetail.setTypeD("测试D");
//        paperDetail.setAnswer("测试修改正确答案");
//        paperDetail.setAnswer2("得分点2");
//        paperDetail.setAnswer3("得分点3");
//        paperDetail.setScore(120);
//        paperDetailService.updatePaperDetail(paperDetail);
//        System.out.println("修改题目信息成功!");
//    }
//
//    @Test
//    public void testQueryPaperDetail() throws Exception{
//        String keyWord = "一";
//        System.out.println(paperDetailService.queryPaperDetail(keyWord));
//    }
//
//    @Test
//    public void testQueryExerciseByTypes() throws Exception{
//        String choiceType = "选择题";
//        String judgeType = "判断题";
//        String completionType = "填空题";
//        String shortAnswerType = "简答题";
//        List<PaperDetail> choiceList = null;
//        List<PaperDetail> judgeList = null;
//        List<PaperDetail> completionList = null;
//        List<PaperDetail> shortAnswerList = null;
//        try {
//            choiceList = paperDetailService.queryExerciseByTypes(choiceType);
//            judgeList = paperDetailService.queryExerciseByTypes(judgeType);
//            completionList = paperDetailService.queryExerciseByTypes(completionType);
//            shortAnswerList = paperDetailService.queryExerciseByTypes(shortAnswerType);
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        assert judgeList != null;
//        choiceList.addAll(judgeList);
//        assert completionList != null;
//        choiceList.addAll(completionList);
//        assert shortAnswerList != null;
//        choiceList.addAll(shortAnswerList);
//        System.out.println(choiceList);
//    }
//
//    @Test
//    public void testQueryExerciseItemsById() throws Exception{
//        int paperId = 2;
//        System.out.println(paperDetailService.queryExerciseItemsById(paperId));
//    }
//
//    @Test
//    public void testJudgeQuestion() throws Exception{
//        String jsonString = "[{\"solution\":\"后置双摄\",\"paperDetailId\":\"52\",\"paperId\":\"2\"}, {\"solution\":\"A\",\"paperDetailId\":\"11\",\"paperId\":\"2\"},{\"solution\":\"A\",\"paperDetailId\":\"4\",\"paperId\":\"2\"}]";
//        JSONArray jsonArray = JSONArray.parseArray(jsonString);
//        int result = paperDetailService.judgeQuestion(jsonArray, 1);
//        System.out.println(result);
//    }
//
//    @Test
//    public void testQueryIdByContent() throws Exception{
//        String content = "模块的内聚性最高的是？";
//        System.out.println(paperDetailService.queryIdByContent(content).getPaperDetailId());
//    }
//
//    @Test
//    public void testQueryQuestion() throws Exception{
//        System.out.println(paperDetailService.queryQuestion(52));
//    }
//}
