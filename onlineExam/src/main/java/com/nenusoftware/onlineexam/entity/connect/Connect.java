package com.nenusoftware.onlineexam.entity.connect;

/**
 * @Author:Liangll
 * @Description:
 * @Date: 22:59 2020/6/17
 */
public class Connect {

    /**
     *编号
     */
    private Integer id;

    /**
     * 试卷Id
     */
    private Integer paperId;

    /**
     * 题目Id
     */
    private Integer paperDetailId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public Integer getPaperDetailId() {
        return paperDetailId;
    }

    public void setPaperDetailId(Integer paperDetailId) {
        this.paperDetailId = paperDetailId;
    }

    @Override
    public String toString() {
        return "Connect{" +
                "id=" + id +
                ", paperId=" + paperId +
                ", paperDetailId=" + paperDetailId +
                '}';
    }
}
