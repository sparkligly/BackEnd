package b_operation;

public class Operation_02 {
	public static void main(String[] args) {
		/*
		1. 증감연산자 ( ++, -- )
		  - 증가연산자(++) : 피연산자의 값을 1 증가시킨다.
		  - 감소연산자(--) : 피연산자의 값을 1 감소시킨다.
		
		*/
		int a = 3;
		a++;
		++a;
		System.out.println(a);
		
		int b = 5;
		int c = 10;
		
		int result = b++ + c;
//		             5   + 10
//		             b=6
		
		System.out.println(result);
		System.out.println(b);
		
		int result2 = 5 + ++b + c++ + b++;
//		                  b=7
//		              5 + 7   + 10  + 7 
//		                        c=11  b=8
		System.out.println(b);//8
		System.out.println(c);//11
		System.out.println(result2); //29
		
		/*
		2. 부호연산자(+, -)
		  - boolean, char형을 제외한 기본형에만 사용할 수 있다.
		*/
		
		int e = -(-10);
		
		/*
		3. 비트전환 연산자( ~ )
		  - 정수형과 char형에만 사용가능하다.
		  - 피연산자를 2진수로 표현했을때 0은 1로 1은 0으로 바꾼다.
		
		*/
		byte b3 = 10;      // 00001010 => 10
		int result3 = ~b3; // 11110101 => -11  10의 1의보수
		int result4 = ~b3+1; // 11110110 => -10  10의 2의보수
		
		System.out.println(result3);
		
		/*
		4. 논리부정연산자 ( ! )
		  - boolean형에만 사용가능하다.
		  - true -> false, false -> true
		*/
		
		//1. 변수 power에 false의 값을 저장해주세요
		boolean power = !false;
		
		System.out.println(!!!power);
		
	}
}
