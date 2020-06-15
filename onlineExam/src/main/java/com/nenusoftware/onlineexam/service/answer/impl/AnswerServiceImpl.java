package com.nenusoftware.onlineexam.service.answer.impl;

import com.nenusoftware.onlineexam.entity.answer.Answer;
import com.nenusoftware.onlineexam.mapper.answer.AnswerMapper;
import com.nenusoftware.onlineexam.service.answer.AnswerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: AnswerService的底层实现方法
 * @Date: 10:53 2019/5/3
 */
@Service
public class AnswerServiceImpl implements AnswerService {

    @Resource
    AnswerMapper answerMapper;

    /**
     * 列出所有答题信息
     * @return 返回List形式的答题信息
     * @throws Exception
     */
    @Override
    public List<Answer> listAllAnswer() throws Exception{
        List<Answer> answerList = Collections.emptyList();
        answerList = answerMapper.listAllAnswer();
        return answerList;
    }

    /**
     * 增加答题信息
     * @param answer 通告实体
     * @return 增加成功返回true，增加失败返回false
     * @throws Exception
     */
    @Override
    public boolean addAnswer(Answer answer) throws Exception {
        if(answerMapper.addAnswer(answer)){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 删除某条答题信息
     * @param answerId
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    @Override
    public boolean deleteAnswer(int answerId) throws Exception{
        return answerMapper.deleteAnswer(answerId);
    }

}
