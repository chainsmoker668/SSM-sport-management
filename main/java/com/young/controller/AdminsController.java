package com.young.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.cj.util.StringUtils;
import com.young.pojo.Admins;
import com.young.pojo.Students;
import com.young.service.AdminsService;
import com.young.service.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/Adm")
public class AdminsController {

    @Autowired
    private AdminsService adminsService;
    @Autowired
    private StudentsService studentsService;

    //回管理主页面
    @RequestMapping("toMainAdm")
    public String tomainAdm(){
        return "mainAdm";
    }

    //登陆
    @RequestMapping("/toLoginAdm")
    public String tologinAdm(){
        return "loginAdm";
    }
    @RequestMapping("/loginAdm")
    public String admLogin (@RequestParam("admAccount") String account,
                            @RequestParam("admPwd") String password,
                            Model model, HttpSession session){
        Admins admins = adminsService.queryAdmByAc(account);
        System.out.println("管理员："+admins);
        if (StringUtils.isNullOrEmpty(account)){
            model.addAttribute("msg","用户名不能为空！");
            System.out.println("错误1：用户名不能为空");
            return "redirect:/err";
        }else if (admins.equals(null)){
            model.addAttribute("msg","未找到用户");
            System.out.println("错误2：未找到用户");
            return "err";
        }else if (account.equals(admins.getAdmAccount())&&password.equals(admins.getAdmPwd())){
            session.setAttribute("adms",admins);
            return "redirect:/Adm/toMainAdm";//回到mainAdm
        }else{
            model.addAttribute("msg","用户名或密码错误");
            System.out.println("错误3：用户名或密码错误");
            return "err";
        }
    }

    //修改密码
    @RequestMapping("toUpdateAdm")
    public String toupdateAdm(Model model,String account){
        Admins admins = adminsService.queryAdmByAc(account);
        model.addAttribute("adms",admins);
        return "updateAdm";
    }
    @RequestMapping("updateAdm")
    public String updateAdm(Model model,Admins admin){
        adminsService.updateAdm(admin);
        Admins admins = adminsService.queryAdmByAc(admin.getAdmAccount());
        model.addAttribute("upadm",admins);
        return "redirect:/Adm/toMainAdm";
    }


/*发布成绩
* 1.查询全部比赛学生
* 2.根据学生ID查询对应学生
* 3.进行成绩更新,然后返回承接页面
*/
    @RequestMapping("/toScoreByAdm")
    public String listAllBook(Model model,
           @RequestParam(required = false,defaultValue = "1",value = "pn") Integer pn){
            PageHelper.startPage(pn,5);
            List<Students> students =  studentsService.queryAllStuState1();
            PageInfo<Students> pageInfo = new PageInfo<>(students, 5);
            model.addAttribute("pageInfo",pageInfo);
            model.addAttribute("list",students);
            return "scoreByAdm";
    }
    //按比赛项目查找学生--》发布成绩模糊查询
    @RequestMapping("/queryStuBySport")
    public String queryStuBySport(Model model, Students students,@RequestParam(required = false,defaultValue = "1",value = "pn") Integer pn) {
        PageHelper.startPage(pn,5);
        List<Students> queryStu = studentsService.queryStu1BySport(students);
        PageInfo<Students> pageInfo = new PageInfo<>(queryStu, 5);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("list", queryStu);
        model.addAttribute("stuSport",students.getStuSport());
        System.out.println("sport:"+students.getStuSport());
        return "scoreByAdm";
    }
    //更新成绩操作
    @RequestMapping("/toUpdateScore")
    public String toUpdateScore(Model model,Integer id){
        Students students = studentsService.queryStuById(id);
        System.out.println("students1:"+students);
        model.addAttribute("scorestu",students);//"book",books)
        return "updateScore";
    }
    @RequestMapping("updateScore")
    public String scoreByAdm(Model model,Students student){
        studentsService.sourceByAdm(student);
        System.out.println("student2:"+student);
        Students students = studentsService.queryStuById(student.getStuId());
        System.out.println("students3:"+students);
        model.addAttribute("upstu",students);
        return "redirect:/Adm/toScoreByAdm";
    }


    //退出登录
    @RequestMapping("/logoutAdm")
    public String logOut(HttpSession session){
        session.removeAttribute("adms");
        return "redirect:/Adm/toLoginAdm";
    }

}
