package com.service.impl;

import com.dao.TsysMapper;
import com.entity.*;
import com.service.TsysService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TsysService")
public class TsysServiceImpl implements TsysService {
    @Autowired
    private TsysMapper tsysMapper;
    //@Autowired
    @Override
    public int login(User user) {
        return tsysMapper.login(user);
    }

    @Override
    public Student stuGetData(String name) {
        return tsysMapper.stuGetData(name);
    }

    @Override
    public String getSno(String name) {
        return tsysMapper.getSno(name);
    }

    @Override
    public String getTno(String name) {
        return tsysMapper.getTno(name);
    }

    @Override
    public Teacher teaGetData(String name) {
        return tsysMapper.teaGetData(name);
    }

    @Override
    public List<Grade> getScore(String sno) {
        return tsysMapper.getScore(sno);
    }

    @Override
    public List<Sc> getSc(String sno) {
        return tsysMapper.getSc(sno);
    }

    @Override
    public List<Course> getAllCourse() {
        return tsysMapper.getAllCourse();
    }

    @Override
    public List<Question> getQuestions(String cno, String qtype) {
        return tsysMapper.getQuestions(cno,qtype);
    }

    @Override
    public String getScode(String sno) {
        return tsysMapper.getScode(sno);
    }

    @Override
    public int giveScore(Answer answer) {
        return tsysMapper.giveScore(answer);
    }

    @Override
    public List<MyClass> getMyClass() {
        return tsysMapper.getMyClass();
    }

    @Override
    public List<Tcourse> getTcourse(String classname, String phase) {
        return tsysMapper.getTcourse(classname,phase);
    }
}
