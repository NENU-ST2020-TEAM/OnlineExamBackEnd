package com.nenusoftware.onlineexam.service.connect;

import com.nenusoftware.onlineexam.entity.connect.Connect;

import java.util.List;

/**
 * @Author: Liangll
 * @Description: ConnectService的接口层
 * @Date: 23:16 2020/6/17
 */
public interface ConnectService {

    /**
     * 通过试卷编号列出试卷详细信息
     * @param paperId 试卷编号
     * @param exerciseType 试题类型
     * @return 返回 List形式的试卷详细信息
     * @throws Exception
     */
    public List<Connect> listAllConnect(int paperId, String exerciseType) throws Exception;

    /**
     * 增加试卷详细信息
     * @param connect 试卷详细信息实体
     * @return 增加成功返回true，增加失败返回false
     * @throws Exception
     */
    public boolean addConnect(Connect connect) throws Exception;

    /**
     * 根据paperId查询试卷的开始时间与结束时间，判断当前时间是否在这时间段内
     * @param paperId
     * @return
     * @throws Exception
     */
    public boolean isInTheTime(int paperId) throws Exception;

    /**
     * 剩余的时间
     * @param paperId
     * @return
     * @throws Exception
     */
    public long leftoverTime(int paperId) throws Exception;

}
