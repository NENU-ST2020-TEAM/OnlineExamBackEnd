package com.nenusoftware.onlineexam.service.wrong;

import com.nenusoftware.onlineexam.entity.wrong.Wrong;

import java.util.List;

/**
 * @author : kongyy
 * @time : 2020/6/16 23:49
 */
public interface WrongService {

    /**
     * 添加错题
     * @param wrong
     * @return
     * @throws Exception
     */
    public boolean addWrong(Wrong wrong) throws Exception;

    /**
     * 列出用户错题
     * @param userId
     * @return
     * @throws Exception
     */
    public List<Wrong> listWrongByUserId(int userId) throws Exception;

    /**
     * 删除错题
     * @param wrongId
     * @return
     * @throws Exception
     */
    public boolean deleteWrong(int wrongId) throws Exception;
}
