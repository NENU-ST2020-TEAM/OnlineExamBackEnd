package com.nenusoftware.onlineexam.service.wrong.impl;

import com.nenusoftware.onlineexam.entity.wrong.Wrong;
import com.nenusoftware.onlineexam.mapper.wrong.WrongMapper;
import com.nenusoftware.onlineexam.service.wrong.WrongService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * @author : kongyy
 * @time : 2020/6/16 23:49
 */
@Service
public class WrongServiceImpl implements WrongService {

    @Resource
    WrongMapper wrongMapper;

    /**
     * 添加错题
     * @param wrong
     * @return
     * @throws Exception
     */
    @Override
    public boolean addWrong(Wrong wrong) throws Exception{
        return wrongMapper.addWrong(wrong);
    }

    /**
     * 列出用户错题
     * @param userId
     * @return
     * @throws Exception
     */
    @Override
    public List<Wrong> listWrongByUserId(int userId) throws Exception{
        List<Wrong> wrongList = Collections.emptyList();
        wrongList = wrongMapper.listWrongByUserId(userId);
        return  wrongList;
    }

    /**
     * 删除错题
     * @param wrongId
     * @return
     * @throws Exception
     */
    @Override
    public boolean deleteWrong(int wrongId) throws Exception{
        return wrongMapper.deleteWrong(wrongId);
    }
}
