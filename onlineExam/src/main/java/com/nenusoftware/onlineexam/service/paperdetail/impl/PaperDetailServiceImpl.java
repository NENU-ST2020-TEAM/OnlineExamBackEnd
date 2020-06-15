package com.nenusoftware.onlineexam.service.paperdetail.impl;

import com.nenusoftware.onlineexam.entity.paperdetail.PaperDetail;
import com.nenusoftware.onlineexam.mapper.paperdetail.PaperDetailMapper;
import com.nenusoftware.onlineexam.service.paperdetail.PaperDetailService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * @Author:Liangll
 * @Description: PaperDetailService的底层实现方法
 * @Date: 10:33 2019/5/14
 */
@Service
public class PaperDetailServiceImpl implements PaperDetailService {

    @Resource
    PaperDetailMapper paperDetailMapper;

    /**
     * 列出所有试卷详细信息
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> listAllPaperDetail() throws Exception{
        List<PaperDetail> paperDetailList = Collections.emptyList();
        paperDetailList = paperDetailMapper.listAllPaperDetail();
        return paperDetailList;
    }

    /**
     * 根据试卷编号列出试卷详细信息
     * @param paperId 试卷编号
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> listPaperDetailByPaperId(int paperId) throws Exception{
        List<PaperDetail> paperDetailList = Collections.emptyList();
        paperDetailList = paperDetailMapper.listPaperDetailByPaperId(paperId);
        return paperDetailList;
    }

    /**
     * 增加试卷详细信息
     * @param paperDetail 试卷详细信息实体
     * @return 增加成功返回true，增加失败返回false
     * @throws Exception
     */
    @Override
    public boolean addPaperDetail(PaperDetail paperDetail) throws Exception {
        if(paperDetailMapper.addPaperDetail(paperDetail)){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 删除试卷详细信息
     * @param paperDetailId 试卷详细信息编号
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    @Override
    public boolean deletePaperDetail(int paperDetailId) throws Exception{
        return paperDetailMapper.deletePaperDetail(paperDetailId);
    }

    /**
     * 修改试卷详细信息
     * @param paperDetail 试卷详细信息实体
     * @return 修改成功返回true，修改失败返回false
     * @throws Exception
     */
    @Override
    public boolean updatePaperDetail(PaperDetail paperDetail) throws Exception{
        return paperDetailMapper.updatePaperDetail(paperDetail);
    }

    /**
     * 模糊查询（查询试卷题目的内容或类型）
     * @param keyWord 输入查询的关键字
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> queryPaperDetail(String keyWord) throws Exception{
        List<PaperDetail> paperDetaillist = Collections.emptyList();
        keyWord = "%" + keyWord + "%";
        paperDetaillist = paperDetailMapper.queryPaperDetail(keyWord);
        return paperDetaillist;
    }

    /**
     * 根据题目类型列出试卷详细信息
     * @param exerciseType 题目类型
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> queryExerciseByTypes(String exerciseType) throws Exception{
        List<PaperDetail> paperDetailList = Collections.emptyList();
        paperDetailList = paperDetailMapper.queryExerciseByTypes(exerciseType);
        return paperDetailList;
    }

    /**
     * 根据试卷Id查询题目选项
     * @param paperDetailId 试卷详细信息编号
     * @return 返回List形式的试卷详细信息
     * @throws Exception
     */
    @Override
    public List<PaperDetail> queryExerciseItemsById(int paperDetailId) throws Exception{
        List<PaperDetail> paperDetailItemsList = Collections.emptyList();
        paperDetailItemsList = paperDetailMapper.queryExerciseItemsById(paperDetailId);
        return paperDetailItemsList;
    }

}
