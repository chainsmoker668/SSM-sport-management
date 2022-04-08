package com.young.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admins {
    private Integer adminID;
    private String admAccount;
    private String admPwd;
}
