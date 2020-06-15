package com.nenusoftware.onlineexam.controller.score;

import com.nenusoftware.onlineexam.entity.score.Score;
import com.nenusoftware.onlineexam.service.paper.PaperService;
import com.nenusoftware.onlineexam.service.score.ScoreService;
import com.nenusoftware.onlineexam.service.user.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: ScoreController层（与前端页面进行交互）
 * @Date: 10:54 2019/5/8
 */
@CrossOrigin(allowCredentials = "true")
@Controller
@RequestMapping("/score")
public class ScoreController {

    @Resource
    ScoreService scoreService;

    @Resource
    UserService userService;

    @Resource
    PaperService paperService;

    /**
     * 增加成绩信息
     * @param paperIdStr 试卷编号
     * @param markStr 分数
     * @param request Http请求
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/addScore")
    public void addExam(String paperIdStr, String markStr, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String username = String.valueOf(session.getAttribute("usernameSession"));
        int userId = userService.queryIdByUsername(username).getUserId();

        int paperId = Integer.parseInt(paperIdStr);
        int mark = Integer.parseInt(markStr);

        String paperName = paperService.queryPaperNameById(paperId).getPaperName();
        Score score = new Score();
        score.setUserId(userId);
        score.setPaperId(paperId);
        score.setMark(mark);
        score.setPaperName(paperName);

        scoreService.addScore(score);
        System.out.println("增加学生答题成绩信息成功！");
    }

    /**
     * 根据试卷编号列出所有学生做该试卷的成绩
     * @param paperIdStr 试卷编号
     * @return 返回List形式的成绩信息
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/queryScoreByPaper")
    public List<Score> queryScoreByPaper(String paperIdStr) throws Exception {
        int paperId = Integer.parseInt(paperIdStr);
        List<Score> scoreList = null;
        try {
            scoreList = scoreService.queryScoreByPaper(paperId);
        }catch (Exception e){
            e.printStackTrace();
        }
        return scoreList;
    }

    /**
     * 根据用户编号列出该用户对应的成绩
     * @param request Http请求，用户需登录
     * @return 返回List形式的成绩信息
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/queryScoreByUser")
    public List<Score> queryScoreByUser(HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String username = String.valueOf(session.getAttribute("usernameSession"));
        int userId = userService.queryIdByUsername(username).getUserId();

        List<Score> scoreList = null;
        try {
            scoreList = scoreService.queryScoreByUser(userId);
        }catch (Exception e){
            e.printStackTrace();
        }
        return scoreList;
    }

}
