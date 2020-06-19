package com.nenusoftware.onlineexam.entity.paper;

/**
 * @Author:Liangll
 * @Description: 试卷实体
 * @Date: 16:17 2019/4/27
 */
public class Paper {

    /**
     * 试卷编号
     */
    private Integer paperId;

    /**
     * 试卷名称
     */
    private String paperName;

    /**
     * 出题方式选择(0:在线出题；1：从题库选题)
     */
    private String status;

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public String getPaperName() {
        return paperName;
    }

    public void setPaperName(String paperName) {
        this.paperName = paperName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Paper{" +
                "paperId=" + paperId +
                ", paperName='" + paperName + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
