package com.service;

import com.entity.*;

import java.util.List;

public interface TsysService {
    int login(User user);
    Student stuGetData(String name);
    String getSno(String name);
    String getTno(String name);
    Teacher teaGetData(String name);
    List<Grade> getScore(String sno);
    List<Sc> getSc(String sno);
    List<Course> getAllCourse();
    List<Question> getQuestions(String cno,String qtype);
    String getScode(String sno);
    int giveScore(Answer answer);
    List<MyClass> getMyClass();
    List<Tcourse> getTcourse( String classname,  String phase);
}
