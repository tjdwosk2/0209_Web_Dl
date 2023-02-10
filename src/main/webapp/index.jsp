<%@page import="com.ict.ex02.Age"%>
<%@page import="com.ict.ex02.MyProcess"%>
<%@page import="com.ict.ex02.MyCalc2"%>
<%@page import="com.ict.ex01.MyCalc"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.ict.edu.HelloImpl"%>
<%@page import="org.springframework.context.support.GenericXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		ApplicationContext context = 
			new GenericXmlApplicationContext("com/ict/edu/config.xml");
		
		HelloImpl hello = (HelloImpl)context.getBean("hello");
		String msg = hello.sayHello();
		out.println("<h2>" + msg + "</h2>");
		
		pageContext.setAttribute("msg", msg);
	--%>
	<%
		// application = 설정파일 => config.xml
		// 서블릿 3.0 이상에서는 /WEB-INF/spring/root-context.xml을 지칭한다.
		// 일반적으로 읽을 수 없다. (리스너를 생성해서 읽는다.)
		// 1. 자바에서 리스너 생성 2. **web.xml에서 생성
		
		WebApplicationContext context = 
			WebApplicationContextUtils.getWebApplicationContext(application);
		
		HelloImpl hello = (HelloImpl)context.getBean("hello");
		String msg = hello.sayHello();
		out.println("<h2>" + msg + "</h2>");
		
		// 읽어오고
		MyCalc mc = (MyCalc)context.getBean("mc");
		int result = mc.plus(10, 20);
		mc.minus(25, 15);
		int result2 = mc.getResult();
		//저장하자
		pageContext.setAttribute("result", result);
		pageContext.setAttribute("result2", result2);
		
		
		MyCalc2 mc2 = (MyCalc2)context.getBean("myCalc2");
		int result3 = mc2.mul(15, 10);
		int result4 = mc2.div(201, 5);
		
		pageContext.setAttribute("result3", result3);
		pageContext.setAttribute("result4", result4);
		

		
		Age age = (Age)context.getBean("age");
		int result5 = age.count("900808", "1");
		pageContext.setAttribute("result5", result5);
	%>
	
	<hr>
	<h2><%=msg %></h2>
	<hr>
	<h2>${msg}</h2>
	<hr>
	<h2> 결과 : 10 + 20 = ${result}</h2>
	<h2> 결과 : 25 - 15 = ${result2}</h2>
	<h2> 결과 : 15 * 10 = ${result3}</h2>
	<h2> 결과 : 201 / 5 = ${result4}</h2>
	<hr>
	<h2> 나이 : (900808, 1) = ${result5}</h2>
</body>
</html>