package a_variable;

public class VariableType {
	public static void main(String[] args) {
		
		/*
		1. 변수의 타입
		  - 기본형 타입(Primitive type) : 값을 저장한다.
		    : boolean, char, byte, short, int, long, float, double 
		  - 참조형 타입(Reference type) : 주소를 저장한다.
		    : 8가지 기본형을 제외한 나머지 타입
		    
		2. 종류
		  - 논리형 : true, false중 하나의 값을 가진다. ex) boolean
		  - 문자형 : 문자 하나를 저장하는 사용된다. ex) char
		  - 정수형 : 정수를 저장하는데 사용된다. ex) byte short int long
		  - 실수형 : 실수를 저장하는데 사용된다. ex) float, double
		  
		3. 기본형 변수의 크기( 1byte => 8bit )
		  - 1byte : boolean, byte
		  - 2byte : char, short
		  - 4byte : int, float
		  - 8byte : long, double
		  
		4. 논리형 - boolean
		  - boolean형 변수에는 true, false만 저장이 가능하다.
		  - 논리구조인 대답(yes/no), 스위치(ON/OFF)
		  - 데이터를 다루는 최소단위가 1byte이기 때문에 1byte의 크기를 가진다.
		*/
		// power라는 변수에 false의 값을 저장해주세요
		boolean power = false;
		//power의 값을 true로 변경해주세요
		power = true;
		
		/*
		5. 문자형 - char
		  - 문자 하나를 저장하는데 사용된다.
		  - java는 Unicode문자체계를 이용한다.
		
		*/
		//문자 'A'를 변수 ch에 저장해주세요
		char ch = 'A';
		char ch2 = 65;
		char ch3 = '\u0041';
		
		int ch4 = '뷁';
		
		System.out.println(ch4);
		
		/*
		6. 정수형 - byte, short, int, long
		  - 기본자료형은 int형입니다.
		  - 변수가 저장하려는 정수값의 범위에 따라 4개의 정수형중에 하나를 선택한다.
		  - byte나 short의 경우 크기가 작아서 범위를 넘어가기 때문에 int형을 사용하는 것이
		     좋다.
		  - JVM의 피연산자 스택에 피연사자를 4byte단위로 저장을 하기 때문에 
		    연산시에는 4byte형으로 연산이 수행된다.
		    
		  - overflow : 변수 자신이 저장할 범위를 넘었을때 최소값부터 다시 표현하는 현상
		
		*/
		
		//1. byte형 변수 b2에 50의 값을 저장해주세요
		byte b2 = 50;
		//2. short형 변수 s2에 40000의 값을 저장해주세요
		short s2 = 30000;
		//3. int형 변수 i2에 5000000의 값을 저장해주세요
		int i2 = 5000000;
		//4. 변수 l2에 10000000000의 값을 저장해주세요
		long l2 = 10000000000L;
		
		byte b3 = -128;
		b3--;
		System.out.println(b3);
		
		/*
		7. 실수형 - float, double
		  - float : 1+8+23
		    double: 1+11+52
		  - 실수형중에 사용할 자료형을 선택할때는 값의 범위뿐만 아니라 정밀도
		    중요한 요소가 된다.
		*/
		
		//1. float형 변수 f2에 3.141592748956를 저장해주세요
		float f2 = 3.141592748956F;
		//2. double형 변수 d2에 3.141592748956를 저장해주세요
		double d2 = 3.141592748956;
		
		System.out.println(f2);
		System.out.println(d2);
		
		System.out.println(0.25 == 0.25f);
		
		/*
		8. String
		
		*/
		String name = "================\n-----------------";
		System.out.println(name);
		
		byte b4 = 10;
		byte b5 = 50;
		
		int result7 = b4 + b5; //byte + byte => int + int
		
		int result8 = 'A' + 'B';
		short s4 = 500;
		int i4 = 20000;
		
		long l4 = 4000000000L;
		
		//1. i4와 70의 합을 변수 result1에 저장해주세요
		int result1 = i4+70;
		
		//2. i4와 b4의 합을 변수 result2에 저장해주세요
		int result2 = i4 + b4;// int + byte => int + int
		
		long result3 = i4 + 100L;
		
		int result4 = i4 + 'A'; // int + char => int + int => 20000 + 65
		
		String result5 = i4 + "hi"; // int + String => String + String => "20000" + "hi"
		System.out.println(result5);
		
		String result6 = i4 + "10000"; // "20000" + "10000" => "2000010000"
		
		/*
		9. 형변환(casting)
		  - 변수 또는 리터럴의 타입을 다른 타입으로 변환하는 것
		
		byte -> short -> int -> long -> float -> double
		                  ^
		         char --- |
		
		
		
		*/
		
		int aa = 67;
		char ch5 = (char)aa;
		System.out.println(ch5);
		
		char ch6 = '김';
		int result10 = ch6;
		
		float ff = 3.14f;
		
		int ab = (int)ff;
		System.out.println(ab);
		int bbb = 10;
		float result11 = (float)bbb/4+(float)3/8;
		System.out.println(result11);
		
		
	}
}
