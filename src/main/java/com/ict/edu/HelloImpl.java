package com.ict.edu;

public class HelloImpl implements Hello {

    public HelloImpl() {
        System.out.println("HelloImpl 생성자");
    }

    @Override
    public String sayHello() {

        return "Hello Spring World";
    }
}