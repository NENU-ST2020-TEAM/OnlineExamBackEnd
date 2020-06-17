package com.nenusoftware.onlineexam.entity.answer;

/**
 * @Author:Liangll
 * @Description: 答题的实体层
 * @Date: 19:44 2019/4/10
 */
public class Answer {

    private Integer answerId;

    private Integer userId;

    private Integer paperDetailId;

    private Integer paperId;

    private Integer score;

    private String solution;

    private String right;

    public Integer getAnswerId() {
        return answerId;
    }

    public void setAnswerId(Integer answerId) {
        this.answerId = answerId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getPaperDetailId() {
        return paperDetailId;
    }

    public void setPaperDetailId(Integer paperDetailId) {
        this.paperDetailId = paperDetailId;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    public String getRight() {
        return right;
    }

    public void setRight(String right) {
        this.right = right;
    }

    @Override
    public String toString() {
        return "Answer{" +
                "answerId=" + answerId +
                ", userId=" + userId +
                ", paperDetailId=" + paperDetailId +
                ", paperId=" + paperId +
                ", score=" + score +
                ", solution='" + solution + '\'' +
                ", right='" + right + '\'' +
                '}';
    }
}
