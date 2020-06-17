package com.nenusoftware.onlineexam.paperdetail;


import com.alibaba.fastjson.JSONArray;
import com.nenusoftware.onlineexam.entity.paperdetail.PaperDetail;
import com.nenusoftware.onlineexam.service.paperdetail.PaperDetailService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @Author:Liangll
 * @Description: 测试PaperDetailService的各类方法
 * @Date: 11:44 2019/5/23
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PaperDetailServiceTest {

    @Autowired
    PaperDetailService paperDetailService;

    /**
     * 列出试题库所有试题详细信息
     * @throws Exception
     */
    @Test
    public void testListAllPaperDetail() throws Exception{
        System.out.println(paperDetailService.listAllPaperDetail());
    }

    /**
     * 根据试卷编号列出试题详细信息
     * @throws Exception
     */
    @Test
    public void testListPaperDetailByPaperId() throws Exception{
        int paperId = 2;
        System.out.println(paperDetailService.listPaperDetailByPaperId(paperId));
    }

    /**
     * 增加试卷试题详细信息
     * @throws Exception
     */
    @Test
    public void testAddPaperDetail() throws Exception {
        PaperDetail paperDetail = new PaperDetail();
//        paperDetail.setPaperDetailId(2);
//        paperDetail.setPaperId(2);
        paperDetail.setExerciseId(1);
        paperDetail.setContent("增加题目内容");
        paperDetail.setTypeA("");
        paperDetail.setTypeB("");
        paperDetail.setTypeC("");
        paperDetail.setTypeD("");
        paperDetail.setAnswer("测试增加正确答案");
        paperDetail.setAnswer2("");
        paperDetail.setAnswer3("");
        paperDetail.setExerciseType("简答题");
        paperDetail.setScore(12);
        paperDetailService.addPaperDetail(paperDetail);
    }

    @Test
    public void testDeletePaperDetail() throws Exception{
        System.out.println(paperDetailService.deletePaperDetail(1));
    }

    @Test
    public void testUpdatePaper() throws Exception{
        PaperDetail paperDetail = new PaperDetail();
        paperDetail.setPaperDetailId(26);
        paperDetail.setContent("测试修改题目内容");
        paperDetail.setTypeA("测试A");
        paperDetail.setTypeB("测试B");
        paperDetail.setTypeC("测试C");
        paperDetail.setTypeD("测试D");
        paperDetail.setAnswer("测试修改正确答案");
        paperDetail.setAnswer2("");
        paperDetail.setAnswer3("");
        paperDetail.setExerciseType("选择题");
        paperDetail.setScore(120);

        paperDetailService.updatePaperDetail(paperDetail);
    }

    @Test
    public void testQueryPaperDetail() throws Exception{
        String keyWord = "一";
        System.out.println(paperDetailService.queryPaperDetail(keyWord));
    }

    @Test
    public void testQueryExerciseByTypes() throws Exception{
        String exerciseType = "单选题";
        System.out.println(paperDetailService.queryExerciseByTypes(exerciseType));
    }

    @Test
    public void testQueryExerciseItemsById() throws Exception{
        int paperId = 2;
        System.out.println(paperDetailService.queryExerciseItemsById(paperId));
    }

    @Test
    public void testjudgeQuestion() throws Exception{
        String jsonString = "[{\"answer\":\"后置双摄\",\"paperDetailId\":\"24\"}, {\"answer\":\"A\",\"paperDetailId\":\"11\"},{\"answer\":\"对\",\"paperDetailId\":\"3\"}]";
        JSONArray jsonArray = JSONArray.parseArray(jsonString);
        int result = paperDetailService.judgeQuestion(jsonArray, 1, 2);
        System.out.println(result);
    }
}
