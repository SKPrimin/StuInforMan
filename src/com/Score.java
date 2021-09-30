package com;

import java.sql.*;

/**
 * @author: SKPrimin
 * @date: 2021/9/30  9:00
 * @ClassName: Score
 * @Description: TODO 本程序能够通过学号获取学生的成绩，具体的，创建一个  Score(String SNO) 对象
 * 在调用getScore()方法之后，便将学生的所有成绩都存储在变量之中，只需使用 实例名.变量名 便可得到
 */
public class Score {
    public String SNO;

    public int chinese;
    public int math;
    public int english;
    public int physics;
    public int chemistry;
    public int biologic;
    public int political;
    public int history;
    public int geography;


    public Score(String SNO) {
        this.SNO = SNO;
    }

    public Score() {

    }

    public void getScore() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection connect = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/javauser?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone = GMT",
                    "root", "root");
//javauser为数据库名，root为用户名，password为密码，需根据实际情况进行修改。本代码需要使用 JDBC驱动
            if(connect != null){
                System.out.print("数据库连接成功！");

                Statement stmt = connect.createStatement();

                ResultSet rs = stmt.executeQuery("select * from stu_tbl where stu_name = '"+SNO+"'");
                while (rs.next()) {
                    chinese = rs.getInt("chinese");
                    math = rs.getInt("math");
                    english = rs.getInt("english");
                    physics = rs.getInt("physics");
                    chemistry = rs.getInt("chemistry");
                    biologic = rs.getInt("biologic");
                    political = rs.getInt("political");
                    history = rs.getInt("history");
                    geography = rs.getInt("geography");

                }
            }
            else{
                System.out.print("连接失败数据区！");
            }
        }catch (Exception e) {
            System.out.print("数据库连接异常外部！");
        }
    }
}


