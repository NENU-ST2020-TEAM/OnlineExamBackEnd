package com.nenusoftware.onlineexam.service.connect.impl;

import com.nenusoftware.onlineexam.entity.connect.Connect;
import com.nenusoftware.onlineexam.mapper.connect.ConnectMapper;
import com.nenusoftware.onlineexam.service.connect.ConnectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: PaperService的底层实现方法
 * @Date: 10:53 2019/5/3
 */
@Service
public class ConnectServiceImpl implements ConnectService {

    @Resource
    ConnectMapper connectMapper;

    /**
     * 通过试卷编号列出试卷详细信息
     * @param paperId 试卷编号
     * @param exerciseType 试题类型
     * @return 返回 List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<Connect> listAllConnect(int paperId, String exerciseType) throws Exception{
        List<Connect> connectList = Collections.emptyList();
        connectList = connectMapper.listAllConnect(paperId, exerciseType);
        return connectList;
    }

    /**
     * 增加试卷详细信息
     * @param connect 试卷详细信息实体
     * @return 增加成功返回true，增加失败返回false
     * @throws Exception
     */
    @Override
    public boolean addConnect(Connect connect) throws Exception {
        return connectMapper.addConnect(connect);
    }
}
