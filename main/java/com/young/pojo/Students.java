package com.young.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Students {
    private Integer stuId;
    private String stuName;
    private Integer stuGrade;
    private String stuClass;
    private String stuSport;
    private double stuScore;
    private String stuState;
    private String stuBy;
    private String stuReason;
    private int num;
}
