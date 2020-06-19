package com.nenusoftware.onlineexam.mapper.wrong;

import com.nenusoftware.onlineexam.entity.wrong.Wrong;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author : kongyy
 * @time : 2020/6/16 23:44
 */
@Mapper
@Repository
public interface WrongMapper {

    /**
     * 添加错题
     * @param wrong
     * @return
     * @throws Exception
     */
    public boolean addWrong(@Param("wrong")Wrong wrong) throws Exception;

    /**
     * 列出用户错题
     * @param userId
     * @return
     * @throws Exception
     */
    public List<Wrong> listWrongByUserId(@Param("userId") int userId) throws Exception;

    /**
     * 删除错题
     * @param wrongId
     * @return
     * @throws Exception
     */
    public boolean deleteWrong(@Param("wrongId") int wrongId) throws Exception;
}
