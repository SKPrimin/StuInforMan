package com;/*
 * @author: SKPrimin
 * @date: 2021/6/30
 * @time: 9:44
 * Descirbe:
 */

//课程拓展到多门课程。
public class Grade {
    int courseNo;
    String courseName;
    double courseScore;

    public Grade(int courseNo, String courseName, double courseScore) {
        this.courseNo = courseNo;
        this.courseName = courseName;
        this.courseScore = courseScore;
    }
}
