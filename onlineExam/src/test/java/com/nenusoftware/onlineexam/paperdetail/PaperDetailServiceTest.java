package com.nenusoftware.onlineexam.paperdetail;

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

    @Test
    public void testListAllPaperDetail() throws Exception{
        System.out.println(paperDetailService.listAllPaperDetail());
    }

    @Test
    public void testListPaperDetailByPaperId() throws Exception{
        int paperId = 2;
        System.out.println(paperDetailService.listPaperDetailByPaperId(paperId));
    }

    @Test
    public void testAddPaperDetail() throws Exception {
        PaperDetail paperDetail = new PaperDetail();
//        paperDetail.setPaperDetailId(2);

        paperDetail.setPaperId(2);
        paperDetail.setExerciseId(1);
        paperDetail.setContent("测试增加题目内容");
        paperDetail.setTypeA("测试A");
        paperDetail.setTypeB("测试B");
        paperDetail.setTypeC("测试C");
        paperDetail.setTypeD("测试D");
        paperDetail.setAnswer("测试增加正确答案");
        paperDetail.setExerciseType("测试增加题目内容");
        paperDetail.setScore(120);

        paperDetailService.addPaperDetail(paperDetail);
    }

    @Test
    public void testDeletePaperDetail() throws Exception{
        System.out.println(paperDetailService.deletePaperDetail(1));
    }

    @Test
    public void testUpdatePaper() throws Exception{
        PaperDetail paperDetail = new PaperDetail();
        paperDetail.setPaperDetailId(1);

        paperDetail.setPaperId(2);
        paperDetail.setExerciseId(1);
        paperDetail.setContent("测试修改题目内容");
        paperDetail.setTypeA("测试A");
        paperDetail.setTypeB("测试B");
        paperDetail.setTypeC("测试C");
        paperDetail.setTypeD("测试D");
        paperDetail.setAnswer("测试修改正确答案");
        paperDetail.setExerciseType("测试修改题目内容");
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

}
