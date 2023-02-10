package com.ict.ex02;

import java.util.Calendar;

import org.springframework.stereotype.Component;
@Component
public class Age {
    public int count(String jumin, String gender) {
        int result = 0;
        // 주민번호, 성별을 받아서 나이 계산
        // gender 1 또는 2 이면 1900년대생
        // gender 3 또는 4 이면 2000년대생

        int year = Calendar.getInstance().get(Calendar.YEAR);
        int real_year = 0;
        if (gender.equals("1") ||  gender.equals("2")) {
            real_year = 1900 + Integer.parseInt(jumin.substring(0, 2));
        } else if (gender.equals("3") || gender.equals("4")) {
            real_year = 2000 + Integer.parseInt(jumin.substring(0, 2));
        }
        result = year - real_year ;
        return result;
    }
}