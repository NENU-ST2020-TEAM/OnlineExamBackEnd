package com.nenusoftware.onlineexam.paper;

import com.nenusoftware.onlineexam.entity.paper.Paper;
import com.nenusoftware.onlineexam.service.paper.PaperService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @Author:Liangll
 * @Description: 测试PaperService的各类方法
 * @Date: 11:44 2019/5/3
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PaperServiceTest {

    @Autowired
    PaperService paperService;

    @Test
    public void testListAllPaper() throws Exception{
        System.out.println(paperService.listAllPaper());
    }

    @Test
    public void testAddPaper() throws Exception {
        String paperName = "增加试卷testtest";
        Paper paper = new Paper();
        paper.setPaperName(paperName);
        paperService.addPaper(paper);
        System.out.println(paperService.queryPaperIdByName(paperName).getPaperId());
    }

    @Test
    public void testDeletePaper() throws Exception{
        System.out.println(paperService.deletePaper(1));
    }

    @Test
    public void testUpdatePaper() throws Exception{
        Paper paper = new Paper();
        paper.setPaperId(3);
        paper.setPaperName("测试修改试卷");
        paperService.updatePaper(paper);
    }

    @Test
    public void testQueryPaperName() throws Exception{
        String keyWord = "试卷";
        System.out.println(paperService.queryPaperName(keyWord));
    }

    @Test
    public void testQueryPaperNameById() throws Exception{
        int paperId = 2;
        System.out.println(paperService.queryPaperNameById(paperId).getPaperName());
    }

    @Test
    public void testQueryPaperIdByName() throws Exception{
        String paperName = "2018年秋季学期17级JavaEE期末考试题";
        System.out.println(paperService.queryPaperIdByName(paperName).getPaperId());
    }
}
