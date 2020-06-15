package com.nenusoftware.onlineexam.service.paper.impl;

import com.nenusoftware.onlineexam.entity.paper.Paper;
import com.nenusoftware.onlineexam.mapper.paper.PaperMapper;
import com.nenusoftware.onlineexam.service.paper.PaperService;
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
public class PaperServiceImpl implements PaperService {

    @Resource
    PaperMapper paperMapper;

    /**
     * 列出所有试卷
     * @return 返回List形式的试卷信息
     * @throws Exception
     */
    @Override
    public List<Paper> listAllPaper() throws Exception{
        List<Paper> paperList = Collections.emptyList();
        paperList = paperMapper.listAllPaper();
        return paperList;
    }

    /**
     * 增加试卷
     * @param paper 试卷实体
     * @return 增加成功返回true，增加失败返回false
     * @throws Exception
     */
    @Override
    public boolean addPaper(Paper paper) throws Exception {
        if(paperMapper.addPaper(paper)){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 删除试卷
     * @param paperId 试卷编号
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    @Override
    public boolean deletePaper(int paperId) throws Exception{
        return paperMapper.deletePaper(paperId);
    }

    /**
     * 修改试卷
     * @param paper 试卷实体
     * @return 修改成功返回true，修改失败返回false
     * @throws Exception
     */
    @Override
    public boolean updatePaper(Paper paper) throws Exception{
        return paperMapper.updatePaper(paper);
    }

    /**
     * 模糊查询（查询试卷名称）
     * @param keyWord 输入查询的关键字
     * @return 返回List形式的试卷信息
     * @throws Exception
     */
    @Override
    public List<Paper> queryPaperName(String keyWord) throws Exception{
        List<Paper> paperlist = Collections.emptyList();
        keyWord = "%" + keyWord + "%";
        paperlist = paperMapper.queryPaperName(keyWord);
        return paperlist;
    }

    /**
     * 根据Id查询试卷名称
     * @param paperId 试卷编号
     * @return 返回Paper形式的试卷信息
     * @throws Exception
     */
    @Override
    public Paper queryPaperNameById(int paperId) throws Exception{
        return paperMapper.queryPaperNameById(paperId);
    }

}
