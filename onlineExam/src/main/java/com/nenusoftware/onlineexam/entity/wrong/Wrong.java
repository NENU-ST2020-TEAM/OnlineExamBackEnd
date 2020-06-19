package com.nenusoftware.onlineexam.entity.wrong;


/**
 * @author : kongyy
 * @time : 2020/6/16 23:42
 */
public class Wrong {

    private Integer wrongId;

    private Integer paperDetailId;

    private Integer userId;

    private String answer;

    private String right;

    private Integer paperId;

    private Integer score;

    private Integer nowScore;

    public Integer getWrongId() {
        return wrongId;
    }

    public void setWrongId(Integer wrongId) {
        this.wrongId = wrongId;
    }

    public Integer getPaperDetailId() {
        return paperDetailId;
    }

    public void setPaperDetailId(Integer paperDetailId) {
        this.paperDetailId = paperDetailId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getRight() {
        return right;
    }

    public void setRight(String right) {
        this.right = right;
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

    public Integer getNowScore() {
        return nowScore;
    }

    public void setNowScore(Integer nowScore) {
        this.nowScore = nowScore;
    }

    @Override
    public String toString() {
        return "Wrong{" +
                "wrongId=" + wrongId +
                ", paperDetailId=" + paperDetailId +
                ", userId=" + userId +
                ", answer='" + answer + '\'' +
                ", right='" + right + '\'' +
                ", paperId=" + paperId +
                ", score=" + score +
                ", nowScore=" + nowScore +
                '}';
    }
}
