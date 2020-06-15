package com.nenusoftware.onlineexam.service.answer;

import com.nenusoftware.onlineexam.entity.answer.Answer;

import java.util.List;

/**
 * @Author:Liangll
 * @Description: AnswerService的接口层
 * @Date: 10:52 2019/5/3
 */
public interface AnswerService {

    /**
     * 列出所有答题信息
     * @return 返回List形式的答题信息
     * @throws Exception
     */
    public List<Answer> listAllAnswer() throws Exception;

    /**
     * 增加答题信息
     * @param answer 答题信息实体
     * @throws Exception
     */
    public boolean addAnswer(Answer answer) throws Exception;

    /**
     * 删除某条答题信息
     * @param answerId
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    public boolean deleteAnswer(int answerId) throws Exception;

}
