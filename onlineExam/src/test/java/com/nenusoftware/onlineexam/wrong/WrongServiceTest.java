package com.nenusoftware.onlineexam.wrong;

import com.nenusoftware.onlineexam.service.wrong.WrongService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author : kongyy
 * @time : 2020/6/17 18:22
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class WrongServiceTest {

    @Autowired
    WrongService wrongService;

    @Test
    public void testListWrongById() throws Exception{
        System.out.println(wrongService.listWrongByUserId(1));
    }

    @Test
    public void testDeleteWrong() throws Exception{
        System.out.println(wrongService.deleteWrong(4));
    }

}
