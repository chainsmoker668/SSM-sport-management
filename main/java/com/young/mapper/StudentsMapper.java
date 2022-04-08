package com.young.mapper;

import com.young.pojo.Students;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface StudentsMapper {
    //学生报名 添加一个学生
    int addStu(Students students);
    //删除一个学生
    int deleteStuById(@Param("stuId") Integer id);

    //更新 审核一个学生
    int updateStu(Students students);
    //查询报名学生（状态0）--》审核
    List<Students> queryAllStuState0();

    //查询参赛学生（状态1）--》更新成绩
    List<Students> queryAllStuState1();
    //学生成绩发布（更新成绩）
    int sourceByAdm(Students students);

    //查询一个学生
    Students queryStuById(@Param("stuId") Integer id);

    //信息更正 --》查询全部学生
    List<Students> queryAllStu();
    //学生信息更正
    int corretStu(Students students);

    //比赛报名情况--可视化数据
    List<Students> sportcount();

    /*
    *模糊查询
    */
    //学生姓名查询学生 --》（信息更正）
    List<Students> queryStuByName(Students students);
    //学生姓名查询学生 状态：未审核--》（报名审核）
    List<Students> queryStu0ByName(Students students);
    //比赛项目查询学生 状态：通过 --》（成绩发布）
    List<Students> queryStu1BySport(Students students);
    //学生姓名查询学生 状态：通过 --》（学生查询自己成绩）
    List<Students> queryStu1ByName(Students students);
}
