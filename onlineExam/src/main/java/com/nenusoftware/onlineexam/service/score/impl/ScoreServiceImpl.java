package com.nenusoftware.onlineexam.service.score.impl;

import com.nenusoftware.onlineexam.entity.score.Score;
import com.nenusoftware.onlineexam.mapper.score.ScoreMapper;
import com.nenusoftware.onlineexam.service.score.ScoreService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: PaperService的底层实现方法
 * @Date: 10:53 2019/5/7
 */
@Service
public class ScoreServiceImpl implements ScoreService {

    @Resource
    ScoreMapper scoreMapper;

    /**
     * 增加成绩信息
     * @param score 成绩信息实体
     * @return 增加成功返回true，增加失败返回false
     * @throws Exception
     */
    @Override
    public boolean addScore(Score score) throws Exception {
        if(scoreMapper.addScore(score)){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 删除成绩
     * @param scoreId 成绩编号
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    @Override
    public boolean deleteScore(int scoreId) throws Exception{
        return scoreMapper.deleteScore(scoreId);
    }

    /**
     * 根据用户编号列出该用户对应的成绩
     * @param userId 用户编号
     * @return 返回List形式的成绩信息
     * @throws Exception
     */
    @Override
    public List<Score> queryScoreByUser(int userId) throws Exception{
        List<Score> scoreList = scoreMapper.queryScoreByUser(userId);
        return scoreList;
    }

    /**
     * 根据试卷编号列出所有学生做该试卷的成绩
     * @param paperId 试卷编号
     * @return 返回List形式的成绩信息
     * @throws Exception
     */
    @Override
    public List<Score> queryScoreByPaper(int paperId) throws Exception{
        List<Score> scoreList = scoreMapper.queryScoreByPaper(paperId);
        return scoreList;
    }

}
