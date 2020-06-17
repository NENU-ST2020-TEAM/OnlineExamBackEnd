package com.nenusoftware.onlineexam.controller.answer;

import com.alibaba.fastjson.JSONArray;
import com.nenusoftware.onlineexam.entity.answer.Answer;
import com.nenusoftware.onlineexam.entity.paperdetail.PaperDetail;
import com.nenusoftware.onlineexam.service.answer.AnswerService;
import com.nenusoftware.onlineexam.service.paperdetail.PaperDetailService;
import io.swagger.models.auth.In;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @Author:Liangll
 * @Description: AnswerController层（与前端页面进行交互）
 * @Date: 10:54 2019/5/3
 */
@CrossOrigin(allowCredentials = "true")
@Controller
@RequestMapping("/answer")
public class AnswerController {

    @Resource
    AnswerService answerService;

}
