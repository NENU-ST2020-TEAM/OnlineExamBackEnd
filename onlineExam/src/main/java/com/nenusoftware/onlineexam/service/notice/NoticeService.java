package com.nenusoftware.onlineexam.service.notice;

import com.nenusoftware.onlineexam.entity.notice.Notice;

import java.util.List;

/**
 * @Author:Liangll
 * @Description: NoticeService的接口层
 * @Date: 10:52 2019/5/9
 */
public interface NoticeService {

    /**
     * 列出所有公告信息
     * @return 返回List形式的公告信息
     * @throws Exception
     */
    public List<Notice> listAllNotice() throws Exception;

    /**
     * 增加公告
     * @param notice 公告实体
     * @return 增加成功返回true，增加失败返回false
     * @throws Exception
     */
    public boolean addNotice(Notice notice) throws Exception;

    /**
     * 删除公告
     * @param noticeId 公告编号
     * @return 删除成功返回true，删除失败返回false
     * @throws Exception
     */
    public boolean deleteNotice(int noticeId) throws Exception;

    /**
     * 修改公告
     * @param notice 公告实体
     * @return 修改成功返回true，修改失败返回false
     * @throws Exception
     */
    public boolean updateNotice(Notice notice) throws Exception;

    /**
     * 公告的模糊查询（可查询公告标题和公告内容）
     * @param keyWord 输入查询的关键字
     * @return 返回List形式的公告信息
     * @throws Exception
     */
    public List<Notice> queryNotice(String keyWord) throws Exception;

}
