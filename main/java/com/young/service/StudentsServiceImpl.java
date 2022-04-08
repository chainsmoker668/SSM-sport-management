package com.young.service;

import com.github.pagehelper.PageHelper;
import com.young.mapper.StudentsMapper;
import com.young.pojo.Students;

import java.util.List;
import java.util.Map;

public class StudentsServiceImpl implements StudentsService{

    private StudentsMapper studentsMapper;

    public void setStudentsMapper(StudentsMapper studentsMapper) {
        this.studentsMapper = studentsMapper;
    }

    @Override
    public int addStu(Students students) {
        return studentsMapper.addStu(students);
    }

    @Override
    public int deleteStuById(Integer id) {
        return studentsMapper.deleteStuById(id);
    }

    @Override
    public int updateStu(Students students) {
        return studentsMapper.updateStu(students);
    }


    @Override
    public List<Students> queryAllStuState1() {

        return studentsMapper.queryAllStuState1();
    }

    @Override
    public int sourceByAdm(Students students) {
        return studentsMapper.sourceByAdm(students);
    }

    @Override
    public Students queryStuById(Integer id) {
        return studentsMapper.queryStuById(id);
    }

    @Override
    public List<Students> queryAllStuState0() {

        return studentsMapper.queryAllStuState0();
    }

    @Override
    public List<Students> queryAllStu() {
        return studentsMapper.queryAllStu();
    }

    @Override
    public List<Students> sportcount() {
        return studentsMapper.sportcount();
    }

    @Override
    public int corretStu(Students students) {
        return studentsMapper.corretStu(students);
    }

    @Override
    public List<Students> queryStuByName(Students students) {
        return studentsMapper.queryStuByName(students);
    }

    @Override
    public List<Students> queryStu0ByName(Students students) {
        return studentsMapper.queryStu0ByName(students);
    }

    @Override
    public List<Students> queryStu1BySport(Students students) {
        return studentsMapper.queryStu1BySport(students);
    }

    @Override
    public List<Students> queryStu1ByName(Students students) {
        return studentsMapper.queryStu1ByName(students);
    }
}


