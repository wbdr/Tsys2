package com.dao;

import com.entity.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TsysMapper {
    int login(User user0);
    Student stuGetData(String name);
    String getSno(String name);
    String getTno(String name);
    Teacher teaGetData(String name);
    List<Grade> getScore(String sno);
    int giveScore(Answer answer);
    List<Sc> getSc(String sno);
    List<Course> getAllCourse();
    List<Question> getQuestions(@Param("cno") String cno,@Param("qtype") String qtype);
    String getScode(String sno);
    List<MyClass> getMyClass();
    List<Tcourse> getTcourse(@Param("classname") String classname,@Param("phase") String phase);
}
