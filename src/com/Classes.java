package com;/*
 * @author: SKPrimin
 * @date: 2021/6/30
 * @time: 9:25
 * Descirbe:
 */

public class Classes {
    Student[] s;

    public Classes(Student[] s) {
        this.s = s;
    }


    public String getAverage() {
        double[] sum = {0, 0};
        for (int j = 0; j < 2; j++) {
            for (int i = 0; i < s.length; i++) {
                sum[j] += s[i].grade[j].courseScore;
            }
        }
        return "课程号：" + s[0].grade[0].courseNo + " 课程名：" + s[0].grade[0].courseName +
                "的平均成绩为：" + sum[0] / s.length +
                "<br/>\t课程号：" + s[0].grade[1].courseNo + " 课程名：" + s[0].grade[1].courseName +
                "&ensp;&ensp;&ensp;的平均成绩为：" + sum[1] / s.length;
    }

    public String getMax() {
        double[] maxScore = {0, 0};
        for (int j = 0; j < 2; j++) {
            for (int i = 0; i < s.length; i++) {
                if (s[i].grade[0].courseScore > maxScore[j]) {
                    maxScore[j] = s[i].grade[j].courseScore;
                }
            }
        }
        return "课程号：" + s[0].grade[0].courseNo + " 课程名：" + s[0].grade[0].courseName +
                "的最高分：" + maxScore[0] +
                "<br/>课程号：" + s[0].grade[1].courseNo + " 课程名：" + s[0].grade[1].courseName +
                "&ensp;&ensp;&ensp;的最高分：" + maxScore[1];
    }

    public String getMin() {
        double[] minScore = {100, 100};
        for (int j = 0; j < 2; j++) {
            for (int i = 0; i < s.length; i++) {
                if (s[i].grade[1].courseScore < minScore[0]) {
                    minScore[j] = s[i].grade[j].courseScore;
                }
            }
        }
        return "课程号：" + s[0].grade[0].courseNo + " 课程名：" + s[0].grade[0].courseName +
                "的最低分：" + minScore[0] +
                "<br/>课程号：" + s[0].grade[1].courseNo + " 课程名：" + s[0].grade[1].courseName +
                "&ensp;&ensp;&ensp;的最低分：" + minScore[1];
    }

    public String gradeDistribution() {
        int[] excellence = {0, 0};
        int[] good = {0, 0};
        int[] pass = {0, 0};
        int[] failure = {0, 0};
        for (int j = 0; j < 2; j++) {
            for (int i = 0; i < s.length; i++) {
                int grade = (int) (s[i].grade[j].courseScore / 10);
                switch (grade) {
                    case 10:
                    case 9:
                        excellence[j]++;
                        break;
                    case 8:
                    case 7:
                        good[j]++;
                        break;
                    case 6:
                        pass[j]++;
                        break;
                    default:
                        failure[j]++;
                        break;
                }
            }
        }
        return "课程号：" + s[0].grade[0].courseNo + " 课程名：" + s[0].grade[0].courseName +
                "分数分布——优秀：" + excellence[0] + " 良好：" + good[0] + " 及格：" + pass[0] + " 不及格：" + failure[0] +
                "<br/>课程号：" + s[0].grade[1].courseNo + " 课程名：" + s[0].grade[1].courseName +
                "&ensp;&ensp;&ensp;分数分布——优秀：" + excellence[1] + " 良好：" + good[1] + " 及格：" + pass[1] + " 不及格：" + failure[1];
    }
    public String memberlist() {
        StringBuilder namelist = new StringBuilder();
        for (Student i : s) {
            namelist.append(i.name + ' ');
        }
        String menmberList = namelist.toString();
        return menmberList;
    }


}
