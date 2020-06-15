package com.nenusoftware.onlineexam.entity.answer;

/**
 * @Author:Liangll
 * @Description: 答题的实体层
 * @Date: 19:44 2019/4/10
 */
public class Answer {

    private Integer answerId;

    private Integer userId;

    private Integer exerciseId;

    private Integer score;

    private String checked;

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

    public Integer getExerciseId() {
        return exerciseId;
    }

    public void setExerciseId(Integer exerciseId) {
        this.exerciseId = exerciseId;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getChecked() {
        return checked;
    }

    public void setChecked(String checked) {
        this.checked = checked;
    }

    @Override
    public String toString() {
        return "Answer{" +
                "answerId=" + answerId +
                ", userId=" + userId +
                ", exerciseId=" + exerciseId +
                ", score=" + score +
                ", checked='" + checked + '\'' +
                '}';
    }
}
