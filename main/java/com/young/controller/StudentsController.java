package com.young.controller;

import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.young.pojo.Students;
import com.young.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Stu")
public class StudentsController {
    //Controller层调用Service层
    @Autowired
    private StudentsService studentsService;


    //查询全部学生--》报名审核
    @RequestMapping("allStu")
    public String listAllBook(Model model, @RequestParam(required = false,defaultValue = "1",value = "pn") Integer pn) {
        PageHelper.startPage(pn,5);
        List<Students> students = studentsService.queryAllStuState0();
        PageInfo<Students> pageInfo = new PageInfo<>(students, 5);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("list", students);
        return "allStu";
    }

    //按名字查找学生--》报名审核模糊查询
    @RequestMapping("/queryStuByNameall")
    public String queryStuByNameall(Model model, Students students, @RequestParam(required = false,defaultValue = "1",value = "pn") Integer pn) {
        PageHelper.startPage(pn,5);
        List<Students> queryStu = studentsService.queryStu0ByName(students);
        PageInfo<Students> pageInfo = new PageInfo<>(queryStu, 5);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("list", queryStu);
        model.addAttribute("stuName",students.getStuName());
        return "allStu";
    }


    /*
     *审核操作：
     * 1.前往审核页面
     * 2.审核操作
     */
    @RequestMapping("/toUpdateStu")
    public String toupdateStu(Model model, Integer id) {
        Students students = studentsService.queryStuById(id);
        System.out.println("通过" + students);
        model.addAttribute("stus", students);
        return "updateStu";
    }

    @RequestMapping("updateStu")
    public String updateokStu(Model model, Students student) {
        studentsService.updateStu(student);
        System.out.println("OK:" + student);
        Students students = studentsService.queryStuById(student.getStuId());
        System.out.println("OK2:" + students);
        model.addAttribute("upstu", students);
        return "redirect:/Stu/allStu";
    }


    //学生信息更正页面--》查询全部学生
    @RequestMapping("/toCorrectStu")
    public String tocorrectStu(Model model,@RequestParam(required = false,defaultValue = "1",value = "pn") Integer pn) {
        PageHelper.startPage(pn,5);
        List<Students> students = studentsService.queryAllStu();
        PageInfo<Students> pageInfo = new PageInfo<>(students, 5);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("list", students);
        return "correctStu";
    }

    //学生信息更正页面--》姓名查询
    @RequestMapping("/queryStuByName")
    public String queryStuByName(Model model, Students students,@RequestParam(required = false,defaultValue = "1",value = "pn") Integer pn) {
        PageHelper.startPage(pn,5);
        List<Students> queryStu = studentsService.queryStuByName(students);
        PageInfo<Students> pageInfo = new PageInfo<>(queryStu, 5);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("list", queryStu);
        model.addAttribute("stuName",students.getStuName());
        System.out.println("信息更正查询"+students);
        return "correctStu";
    }

    //更正信息操作
    @RequestMapping("/toCorrect")
    public String tocorrect(Model model, Integer id) {
        Students students = studentsService.queryStuById(id);
        model.addAttribute("stus", students);//"book",books)
        return "correct";
    }

    @RequestMapping("correct")
    public String correct(Model model, Students student) {
        studentsService.corretStu(student);
        Students students = studentsService.queryStuById(student.getStuId());
        model.addAttribute("upstu", students);
        return "redirect:/Stu/toCorrectStu";
    }


    //删除学生数据
    @RequestMapping("/del/{stuId}")
    public String deleteStu(@PathVariable("stuId") Integer id) {
        studentsService.deleteStuById(id);
        return "redirect:/Stu/toCorrectStu";
    }

    //学生查看成绩
    @RequestMapping("/toScoreByStu")
    public String toScoreByStu(Model model,
           @RequestParam(required = false, defaultValue = "1", value = "pn") Integer pn) {
        PageHelper.startPage(pn, 5);

        List<Students> students = studentsService.queryAllStuState1();

        PageInfo pageInfo =  new PageInfo<Students>(students, 5);

        model.addAttribute("list", students);
        model.addAttribute("pageInfo",pageInfo);
        return "scoreByStu";
    }

    //学生信息更正页面--》姓名查询
    @RequestMapping("/queryStuByNameStu")
    public String queryStuByNameStu(Model model, Students students,@RequestParam(required = false,defaultValue = "1",value = "pn") Integer pn) {
        PageHelper.startPage(pn,5);
        List<Students> queryStu = studentsService.queryStu1ByName(students);
        PageInfo<Students> pageInfo = new PageInfo<>(queryStu, 5);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("list", queryStu);
        model.addAttribute("stuName",students.getStuName());
        return "scoreByStu";
    }


    //学生入口页面跳转
    @RequestMapping("/toMainStu")
    public String toMainStu() {
        return "mainStu";
    }


    //学生报名
    @RequestMapping("/toAddStu")
    public String toaddStu() {
        return "addStu";
    }
    @RequestMapping("/addStu")
    public String addStu(Students students) {
        System.out.println(students);
        studentsService.addStu(students);
        return "redirect:/Stu/toMainStu";
    }


    //赛事公告界面
    @RequestMapping("/toAd")
    public String toAd() {
        return "ad";
    }

    @RequestMapping("/topie")
    public String topie(Model model){
        List<Students> sportcount = studentsService.sportcount();
        model.addAttribute("list",sportcount);
        return "pie";
    }
}
