package com.nenusoftware.onlineexam.service.connect.impl;

import com.nenusoftware.onlineexam.entity.connect.Connect;
import com.nenusoftware.onlineexam.entity.paper.Paper;
import com.nenusoftware.onlineexam.mapper.connect.ConnectMapper;
import com.nenusoftware.onlineexam.service.connect.ConnectService;
import com.nenusoftware.onlineexam.service.paper.PaperService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
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

    @Resource
    PaperService paperService;

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

    @Override
    public boolean isInTheTime(int paperId) throws Exception{
        Paper paper = paperService.queryPaperNameById(paperId);
        Date date1 = new Date();
        Date date2 = new Date();
        Date date3 = new Date();
        String str1 = paper.getBeginTime();
        String str2 = paper.getEndTime();
        String begin[] = paperService.extractTime(str1);
        String end[] = paperService.extractTime(str2);
        String now[] = new String[6];
        Calendar calendar=Calendar.getInstance();
        now[0] = String.valueOf(calendar.get(Calendar.YEAR));
        now[1] = String.valueOf(calendar.get(Calendar.MONTH)+1);
        now[2] = String.valueOf(calendar.get(Calendar.DATE));
        now[3] = String.valueOf(calendar.get(Calendar.HOUR_OF_DAY));
        now[4] = String.valueOf(calendar.get(Calendar.MINUTE));
        now[5] = String.valueOf(calendar.get(Calendar.SECOND));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
        String beginTime = begin[0]+"-"+begin[1]+"-"+begin[2]+"-"+begin[3]+"-"+begin[4]+"-"+begin[5];
        String endTime = end[0]+"-"+end[1]+"-"+end[2]+"-"+end[3]+"-"+end[4]+"-"+end[5];
        String nowTime = now[0]+"-"+now[1]+"-"+now[2]+"-"+now[3]+"-"+now[4]+"-"+now[5];
        date1 = sdf.parse(beginTime);
        date2 = sdf.parse(endTime);
        date3 = sdf.parse(nowTime);
        return date3.after(date1) && date3.before(date2);
    }

    @Override
    public long leftoverTime(int paperId) throws Exception{
        Paper paper = paperService.queryPaperNameById(paperId);
        String durationStr = paper.getDuration();
        int duration = Integer.parseInt(durationStr)*60;
        String str = paper.getEndTime();
        String end[] = paperService.extractTime(str);
        String now[] = new String[6];
        Calendar calendar=Calendar.getInstance();
        now[0] = String.valueOf(calendar.get(Calendar.YEAR));
        now[1] = String.valueOf(calendar.get(Calendar.MONTH)+1);
        now[2] = String.valueOf(calendar.get(Calendar.DATE));
        now[3] = String.valueOf(calendar.get(Calendar.HOUR_OF_DAY));
        now[4] = String.valueOf(calendar.get(Calendar.MINUTE));
        now[5] = String.valueOf(calendar.get(Calendar.SECOND));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
        String endTime = end[0]+"-"+end[1]+"-"+end[2]+" "+end[3]+"-"+end[4]+"-"+end[5];
        String nowTime = now[0]+"-"+now[1]+"-"+now[2]+" "+now[3]+"-"+now[4]+"-"+now[5];
        Date date1 = new Date();
        Date date2 = new Date();
        date1 = sdf.parse(endTime);
        date2 = sdf.parse(nowTime);
        long diff = (date1.getTime() - date2.getTime())/1000;
        if(diff >= duration){
            return duration;
        }
        return diff;
    }
}
