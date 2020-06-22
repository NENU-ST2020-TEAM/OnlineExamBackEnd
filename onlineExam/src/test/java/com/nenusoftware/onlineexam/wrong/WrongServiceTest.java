package com.nenusoftware.onlineexam.wrong;

import com.nenusoftware.onlineexam.service.wrong.WrongService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Calendar;
import java.util.Date;

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

    @Test
    public void testFunc() throws Exception{
//        Date date = new Date();
//        System.out.println(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
//        System.out.println(calendar.get(Calendar.YEAR));  //获取年份
        System.out.println(calendar.get(Calendar.MONTH));  //获取月份
//        System.out.println(calendar.get(Calendar.DATE));  //获取日
//        System.out.println(calendar.get(Calendar.HOUR_OF_DAY)); //时（24小时制）
//        System.out.println(calendar.get(Calendar.MINUTE));  //分
//        System.out.println(calendar.get(Calendar.SECOND));  //秒
    }
}
