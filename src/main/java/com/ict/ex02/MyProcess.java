package com.ict.ex02;

public class MyProcess {
		private String name;//이름
		private String jumin;//주민번호
		private String gender;//성별
		
		
		private Age age;//나이
		
		public MyProcess() {}
		
		//유진필드
		public MyProcess(String name, String jumin, String gender, Age age) {
			super();
			this.name = name;
			this.jumin = jumin;
			this.gender = gender;
			this.age = age;
		}
		
		//실행 하고 싶은 메서드
		public void prn() {
			System.out.println("이름 : "+ name);
			System.out.println("나이 : "+ age.count(jumin, gender)); //count 주민번호랑 성별을넣어주면
			
		}
		//겟터 셋터 

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getJumin() {
			return jumin;
		}

		public void setJumin(String jumin) {
			this.jumin = jumin;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public Age getAge() {
			return age;
		}

		public void setAge(Age age) {
			this.age = age;
		}
		
		
}
