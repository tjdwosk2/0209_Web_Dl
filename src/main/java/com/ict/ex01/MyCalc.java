package com.ict.ex01;

public class MyCalc {
	private int result ; //전역변수
	public int plus(int s1, int s2) {
		
		return s1 + s2 ;
		
	}
	
	public void minus(int s1, int s2) {
		
	 result = s1 - s2 ;
	 
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}
	
}
