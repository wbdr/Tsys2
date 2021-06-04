package com.web;

import com.entity.*;
import com.service.TsysService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController {
    //创建Service的对象
    @Autowired
    private TsysService tsysService;


    //默认进入首页
    @RequestMapping("/")
    public String index() {
        return "login";
    }

    //登陆
    @RequestMapping("login")
    public String login(HttpServletRequest req, Model model) {
        String name = req.getParameter("userName");
        String password = req.getParameter("userPassword");
        int type = Integer.parseInt(req.getParameter("userType"));
        if (type == 2) {
            name = "root@";
        }
        //System.out.println("@@@@"+name+"#"+passward+"#"+type);
        User user = new User();
        user.setUid(0);
        user.setName(name);
        user.setPassword(password);
        user.setType(0);
        int result = tsysService.login(user);
        user.setUid(result);
        if (result == 1) {
            switch (type) {
                case 0:
                    model.addAttribute("user", user);
                    return "indexStu?" + "name=" + user.getName();
                case 1:
                    model.addAttribute("user", user);
                    return "indexTea";
                case 2:
                    model.addAttribute("user", user);
                    return "indexRoot";
            }
        }
        return "error";

    }

    @RequestMapping("indexStu")
    public String indexStu(Model model, String name) {
        name = name.substring(0, name.indexOf("."));
        String sno = "" + tsysService.getSno(name);
        System.out.println("@##############" + sno + "###" + name);
        model.addAttribute("sno", sno);
        model.addAttribute("sname", name);

        return "indexStu";
    }

    @RequestMapping(value = "stuData", params = "sname")
    public String stuData(Model model, String sname) {

        Student student = tsysService.stuGetData(sname);
        System.out.println("@##############" + "###");
        model.addAttribute("student", student);

        if ("1".equals(student.getSsex())) {
            student.setSsex("男");
        } else {
            student.setSsex("女");
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//参数为你需要的时间格式
        String sbirth = sdf.format(student.getSbirth());
        model.addAttribute("sbirth", sbirth);
        return "stuData";
    }

    @RequestMapping(value = "stuScore", params = "sno")
    public String stuScore(Model model, String sno) {
        List<Grade> gradeList = tsysService.getScore(sno);
        model.addAttribute("gradeList", gradeList);
        return "stuScore";
    }

    @RequestMapping(value = "stuSc", params = "sno")
    public String stuSc(Model model, String sno) {
        List<Sc> scList = tsysService.getSc(sno);
        model.addAttribute("scList", scList);
        return "stuSc";
    }

    @RequestMapping(value = "stuexamChoose", params = "sno")
    public String stuexamChoose(Model model, String sno, String sname) {
        List<Course> courses = tsysService.getAllCourse();
        model.addAttribute("courses", courses);
        model.addAttribute("sno", sno);
        model.addAttribute("sname", sname);
        return "stuexamChoose";
    }

    @RequestMapping(value = "stuexam", params = "cno")
    public String stuexam(Model model, String sno, String cno, String sname) {
        List<Question> singleQuestions = tsysService.getQuestions(cno, "0");
        model.addAttribute("singleQuestions", singleQuestions);
        model.addAttribute("singleSize", singleQuestions.size());
        List<Question> multiQuestions = tsysService.getQuestions(cno, "1");
        model.addAttribute("multiQuestions", multiQuestions);
        model.addAttribute("multiSize", multiQuestions.size());
        List<Question> judgeQuestions = tsysService.getQuestions(cno, "3");
        model.addAttribute("judgeQuestions", judgeQuestions);
        model.addAttribute("judgeSize", judgeQuestions.size());
        List<Question> fillQuestions = tsysService.getQuestions(cno, "2");
        model.addAttribute("fillQuestions", fillQuestions);
        model.addAttribute("fillSize", fillQuestions.size());
        int size = 0 + singleQuestions.size() + multiQuestions.size() + judgeQuestions.size() + fillQuestions.size();
        model.addAttribute("size", size);
        model.addAttribute("sno", sno);
        model.addAttribute("sname", sname);
        String scode = tsysService.getScode(sno);
        model.addAttribute("scode", scode);
        return "stuexam";
    }

    @RequestMapping("Cexam_giveScore")
    public String Cexam_giveScore(HttpServletRequest req, Model model) {
        int size = Integer.parseInt(req.getParameter("size"));
        int sum = 0;
        for (int i = 1; i <= size; i++) {
            Answer answer = new Answer();
            answer.setQid(req.getParameter("question_id_" + i));
            String a = "" + (String) req.getParameter("answer_" + i);
            if ("".equals(a)) {
                a = "5";
            }
            answer.setQanwser(a);
            sum += tsysService.giveScore(answer) * 4;
        }
        model.addAttribute("score", sum);
        //Map<String,String>
        return "cexam_over";
    }

    @RequestMapping("autoSch")
    public String autoSch(Model model) {
        List<MyClass> myClassList = tsysService.getMyClass();
        model.addAttribute("myClassList",myClassList);
        return "autoSch";
    }
    @RequestMapping("autoSchNext")
    public String autoSchNext(Model model,String classname,String phase) {
        List<Tcourse> tcourseList = tsysService.getTcourse(classname,phase);
        model.addAttribute("tcourseList",tcourseList);
        model.addAttribute("classname",classname);
        model.addAttribute("phase",phase);
        return "autoSchNext";
    }
    @RequestMapping("autoSchResult")
    public String autoSchResult(Model model,String classname,String phase) {
        List<Tcourse> tcourseList = tsysService.getTcourse(classname,phase);
        List<String> cnames=new ArrayList<>();
        int lenth=tcourseList.size();
        int all=0;
        for (Tcourse e:tcourseList){all+=e.getTimes();}
        int k=0;
        String isSuccessed="1";
        if(all>20){
            isSuccessed="0";
            return "autoSchResult";
        }
        for(int i=0;k<all;i++){
            Tcourse tcourse=tcourseList.get(i%lenth);
            if(tcourse.getTimes()>0){
                cnames.add(k,tcourse.getCname());
                k++;
                tcourseList.get(i%lenth).setTimes(tcourse.getTimes()-1);

            }

        }
        int space=20-all;
        for(int j=k-1;j>=1;j--){
            if(cnames.get(j).equals(cnames.get(j - 1))){
                if(space>0) {
                    cnames.add(j-1, "暂无");
                    space--;
                }else {
                    break;
                }

            }
        }
        int i=1;
        for(;space>0;space--){
            cnames.add(i,"暂无");
            i=(i+3)%cnames.size();
        }
        model.addAttribute("isSuccessed",isSuccessed);
        model.addAttribute("cnames",cnames);
        return "autoSchResult";
    }

    public TsysService getTsysService() {
        return tsysService;
    }

    public void setTsysService(TsysService tsysService) {
        this.tsysService = tsysService;
    }
}
