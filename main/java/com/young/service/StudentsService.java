package com.young.service;

import com.young.pojo.Students;

import java.util.List;
import java.util.Map;

public interface StudentsService {
    //添加一个学生
    int addStu(Students students);
    //删除一个学生
    int deleteStuById(Integer id);
    //更新一个学生
    int updateStu(Students students);

    List<Students> queryAllStuState1();

    int sourceByAdm(Students students);
    //查询一个学生
    Students queryStuById(Integer id);
    //查询全部学生
    List<Students> queryAllStuState0();

    //信息更正 --》查询全部学生
    List<Students> queryAllStu();
    //比赛报名情况
    List<Students> sportcount();
    //学生信息更正
    int corretStu(Students students);

    List<Students> queryStuByName(Students students);

    List<Students> queryStu0ByName(Students students);

    List<Students> queryStu1BySport(Students students);

    List<Students> queryStu1ByName(Students students);
}
