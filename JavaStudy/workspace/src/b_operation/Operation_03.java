package b_operation;

public class Operation_03 {
	public static void main(String[] args) {
		/*
		1. 산술연산자
		  - 사칙연산자(+,-,*,/), 나머지연산자 (%), 쉬프트 연산자( <<, >>, >>> )
		  - 이항연산자 이다.
		  
		2. 사칙연산자( +, -, *, / )
		  - 두개의 피연산자중 표현범위가 더큰쪽에 맞춰서 형변화 후에 연산을 수행한다.
		    int + float => float + float => float
		    
		  - 두개의 피연산자모두 4byte형보다 작을때는 int형으로 변환후 연산을 수행한다.
		    char + byte => int + int => int
		    
		  - 정수형 간의 나눗셈에서는 0으로 나누는 것은 금지되어 있다.
		
		*/
		
		//1. byte형 변수 a에 20의 값을 저장해주세요
		byte a = 20;
		//2. byte형 변수 b에 30의 값을 저장해주세요
		byte b = 30;
		//3. int형 변수 c에 2000의 값을 저장해주세요
		int c = 2000;
		
		//4. a와 b의 합을 result에 저장해주세요
		byte result = (byte)(a+b);
		
		//5. a와 c의 합계를 변수 result2에 저장해주세요
		byte result2 = (byte)(a+c);
		System.out.println("연습5번 : "+result2);
		
		/*
		3. 나머지 연산자 (%)
		  - 왼쪽의 피연산자를 오른쪽 피연산자로 나누고 난 나머지 값을 돌려준다.
		  - boolean형에는 사용할수 없다.
		
		*/
		
		int input1 = 16;
		int input2 = 8;
		
		//몫
		int share = input1/input2;
		
		//나머지
		int remain = input1%input2;
		// 10을 8로 나눈 몫은 xx이고 나머지는 xx이다.
		System.out.println(input1+"을 "+input2+"로 나눈 몫은 "+share+"이고 나머지는 "+remain+"이다.");
		
		/*
		4. 쉬프트 연산자 (<<, >> ,>>>)
		  - 정수형변수에만 사용가능하다.
		  - 피연산자의 각자리(2진수)를 이동시킨다.
		  - 곱셈과 나눗셈을 할때 연산속도가 매우 좋기 때문에 사용한다.
		  - << : x << n => x*2^n => overflow고려
		    >> : x >> n => x/2^n
		*/
		
		int aa = 10;
		System.out.println(aa<<4);
		System.out.println(aa>>2);
		
		/*
		5. 비교연산자
		  - 두개의 변수 또는 리터럴을 비교하는데 사용된다.
		  - 주로 조건문과 반복문의 조건식에 사용되며 연산결과는 true, false이다.
		  - 이항연산자 이다.
		  
		6. 대소비교연산자( <, > <= >= )
		  - boolean형, 참조형에는 사용할수 없다.
		
		7. 등가비교연산자( ==, != )
		  - 모든 자료형에 사용이 가능하다.
		  
		  수식                  연산결과
		  x<y      |  x가 y보다 작을때만 true 그외에는 false
		  x>y      |  x가 y보다 클때만 true 그외에는 false
		  x<=y     |  x가 y보다 작거나 같을때만 true 그외에는 false
		  x>=y     |  x가 y보다 크거나 같을때만 true 그외에는 false
		  x==y     |  x와 y가 같을때만 true 그외에는 false
		  x!=y     |  x와 y가 다를때만 true 그외에는 false
		  
		*/
		
		System.out.println(5 < 2);
		System.out.println('0' != 0);
		System.out.println(10.0 == 10.0f);
		
		/*
		8. 비트연산자 ( &, |, ^ )
		  - 이진비트를 수행한다.
		  - & (AND연산자) : 피연산자 양쪽모두 1일때만 1의 결과를 얻는다.
		  - | (OR연산자) : 피연산자중 어느 한쪽 1이면 1의 결과를 얻는다.
		  - ^ (XOR연산자) : 피연산자의 값이 서로 다를때 1의 결과를 얻는다.
		
		3   -> 00000011
		5   -> 00000101
		3^5 -> 00000110 => 6
		3|5 -> 00000111 => 7
		3&5 -> 00000001 => 1
		
		*/
		System.out.println("3^5 : " + (3^5));
		System.out.println("3|5 : " + (3|5));
		System.out.println("3&5 : " + (3&5));
		
		/*
		9. 논리연산자 ( &&, || )
		  - 피연산자로 boolean형 또는 boolean형 값을 결과로 하는 조건식을 허용한다
		  - 조건문과 반복문에서 조건식 값의 결합에 사용된다.
		  - || (OR결합) : 피연산자중 어느 한쪽만 true이면 true의 결과를 얻는다.
		    && (AND결합): 피연산자 양쪽모두 true일때만 true의 결과를 가진다. 
		*/
		
		//1. 변수 ch5에 'K'를 저장해주세요
		char ch5 = '5';
		//2. ch5의 값이 영어 대문자 이면 true를 출력하게 해주세요
		// 대문자  A-Z
		// 'A' <= ch5 <= 'Z'
		// 'A' <= ch5 && ch5 <= 'Z'
		System.out.println('A' <= ch5 && ch5 <= 'Z');
		System.out.println('a' <= ch5 && ch5 <= 'z');
		
		//3. ch5가 영문자일때 true인 조건식을 만들어주세요
		System.out.println('A' <= ch5 && ch5 <= 'Z' || 'a' <= ch5 && ch5 <= 'z');
		
		//4. ch5가 숫자형일때 true인 조건식을 만들어주세요
		// '0' - '9'
		System.out.println('0' <= ch5 && ch5 <= '9');
		
		//5. ch5가 영문자 또는 숫자형일때 true인 조건식을 만들어주세요
		System.out.println('A' <= ch5 && ch5 <= 'Z' || 'a' <= ch5 && ch5 <= 'z' || '0' <= ch5 && ch5 <= '9');
		
		/*
		10. 삼항연산자
		  - 세 개의 피연산자를 필요로 하기 때문에 삼항연산자로 이름 지어 졌다.
		  - 삼항연산자의 조건식에는 연산결과가 true 또는 false인 식이 사용된다.
		  - 기본구조
		    (조건식) ? 식1(조건식이 true일때 실행) : 식2(조건식이 false일때 수행)
		*/
		int x = -10;
		int absX = x > 0 ? x : -x;
		
		//x의 값이 양수이면 "양수", 음수이면 "음수", 0이면 "0"을 변수 str에 저장
		//1. 양수 : 양수가 아닌경우
		String str = x > 0 ? "양수" : x < 0 ? "음수" : "0";
		System.out.println(str);

		
		/*
		11. 대입연산자 ( = , op= )
		  - 변수에 값 또는 수식의 결과를 저장하는데 사용한다.
		  - 연산자중 가장낮은 연산순위를 가진다.
		*/
		
		//1. 변수 tt에 20값을 저장해주세요
		int tt = 20;
		//2. 변수 tt에 30을 더해서 tt에 저장해주세요
//		tt = tt + 30;
		tt += 30;
		
		char cc = 'A';
//		cc = (char)(cc + 1);
		cc += 1;
		
		/*
		12. 반올림
		
		*/
		float pi = 3.141592F;
		// *1000 => 3141.592
		// +0.5  => 3142.092
		// (int) => 3142
		// /1000f=> 3.142
		System.out.println((int)(pi*10000+0.5)/10000f);
		int pi2 = 2458;
		
		/*
		13. Math.random()
		*/
		
		//1. 1~45사이의 랜덤한 정수값 하나를 뽑아주세요
		int random = (int)(Math.random()*45+1);
		System.out.println(random);
		
		//2. 42(미포함) ~ 1673(포함)중 랜덤한 정수값 하나를 뽑아주세요
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
