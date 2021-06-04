package com.entity;

import java.util.Date;

public class Teacher {
    String tno;
    String tname;
    String tsex;
    Date tbirth;
    String ano;
    String tcode;

    public String getTno() {
        return tno;
    }

    public void setTno(String tno) {
        this.tno = tno;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTsex() {
        return tsex;
    }

    public void setTsex(String tsex) {
        this.tsex = tsex;
    }

    public Date getTbirth() {
        return tbirth;
    }

    public void setTbirth(Date tbirth) {
        this.tbirth = tbirth;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getTcode() {
        return tcode;
    }

    public void setTcode(String tcode) {
        this.tcode = tcode;
    }
}
