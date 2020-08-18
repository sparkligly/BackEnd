package a_variable;

public class VariableTye {
	public static void main(String[] args){
		
		
		/*
		 1.변수의 타입
		 
		 -기본형 타입() _값을 저장하는 곳 
		 총 8개가 있음 : blooean(블릿), char(캐릭터), byte(바이트), short(숏트), int(인트), long(롱), float, double(더블)
		  
		 -참조형타입()_주소를 저장하는 곳 여러개를 한번에 같이 갖고 다님
		 8가지 기본형을 제외한 나머지 타입
		 
		 
		 2.종류
		 -논리형 : true, false 중 하나의 값을 가진다. ex) boolean 
		 -문자형 : 문자하나를 저장하는 데 사용된다 ex)char
		 -정수형:정수를 저장하는데 사용한다. ex)byte정수저장한때 가장작은것 int의 대표형 short long
		 -실수형: 실수를 저장하는데 사용합니다.  ex) float, double(기본형)
		  
		 		 
		 3. 기본형 변수의 크기 (1byte = 8bit)
		 -1byte:boolean,byte
		 -2byte:char(캐릭터),short(숏트)
		 -4byte:int(인트), float
		 -8byte: long(롱),double(더블)
		 		 
		 		 
		 -논리형 : blooean(블릿)
		 -문자형 : 문자하나를 저장하는 데 사용된다 ex) char(캐릭터),2
		 -정수형:정수를 저장하는데 사용한다. ex)byte정수저장한때 가장작은것 int의 대표형 short long
		 byte(바이트), short(숏트), int(인트), long(롱),
		 -실수형:float, double(기본형)
		 
		 		  
	 4. 논리형 boolean
	-boolean형 변수에는 true,float
	 논리구조인 대답 yes/no,스위치(on/off)
	 데이터를 다루는 최소단위가 1bye이기 때문에 크리를 가진다. 
		 		 
	power라는 변수에 false의 값을 저장해주세요
		 		
		 */
		
		boolean power = false; //변수선언
		//power의 값을 true로 변경해주세요.
		
		power = true; // 여기서는 blooean을 쓰지마시오  왜냐묜 위에서 먼저 선언함

		
	/*5. 문자형 -char 
	
	-  문자하나를 저장하는데 사용된다. 
	- java는 유니코드를  문자체계를 이용한다. 
	
	
		
		'' (싱글쿼트)
		*/
		//문자 'A'변수 ch에 저장해주세요
		char ch = 'A';
		char ch2 = 65;
		char ch3 = '\u0041'; //역슬러쉬가 나오고 숫자가 나오면 이 숫자는 유니코드입니다. 라는 내용이됨 
		
		int ch4 = '나';
		System.out.println(ch4);
		
		
		/*-정수형: byte(바이트)1, short(숏트)2, int(인트)4, long(롱)8
		 기본자료형은 int형 입니다.
		 변수가 저장하려는 정수값의 범위에 따라 4개의 정수형중에 하나를 선택한다. 
		 
		 byte나 short의 경우 크기가작아서 범위를 넘어가기때문에 인트형을 사용하는것이 좋다. 
		 JVM의 피연산자 스택에 피연산자를 4btye단위로 저장을 하기 때문에 연산시에는 4btye으로 수행이 된다. 
		 
		 * 
		 */
		
		 //1. byte형 변수 b2에  50의 값을 저장해주세요
		byte b2= 50;
		//2. short형 변수 s2에  40000의 값을 저장해주세요
		short s2 = 30000;
		 //3. int형 변수 i2에  5000000의 값을 저장해주세요
		int i2 = 5000000;
		 //4. 변수 l2에  10000000000의 값을 저장해주세요
		long l2 = 10000000000L;
		
		byte b3 =126;// byte는 -128~127 까지 만 저장할수있기때문에 넘치면 overflow 라고 -n으로 뜬다. 
		b3++;  //++은 1를 더한다는 뜻이다. 
		b3++;
		
		System.out.println(b3);
		
		//-overflow:변수 자신이 저장할 범위를 넘었을때 최소값부터 
		
		
		
		/*
		  실수형:float, doudle
		  
		  float:1+8+23
		  doudle: 1+11+52 //2의51승
		  - 실수형중에 사용할 자료형을 선택할때는 값의 범위뿐만아니라 정밀도가 중요한 요소가 된다. 
		  
		 */
		
		//변수선언
		//float형 변수 f2에  3.141592748956의 값을 저장해주세요
		float f2 = 3.141592748956F;
		
		//double형 변수 d2에  3.141592748956의 값을 저장해주세요
		double d2 = 3.141592748956;
		
		
		System.out.println(f2);
		System.out.println(d2);
		
		System.out.println(0.5==0.5f); //ture
		
		System.out.println(0.1==0.1f); //false
		
		System.out.println(0.25==0.25f); //ture  노란줄가면 트루
		
		
		/*
		 8. String
		  //클래스의 명칭  자바에서 문자열을 다룰수있게 만들어준것
		   * 
		   *  
		   *  
		 
		 */
		
		//String name=null;(참조형(주소)) 표현 길이의 제한이 없다. 범위 무한대 특수기호 가능 
		
		String name="==========\n-----------";
		System.out.println(name);
		
		System.out.println(10+40);
	
		short s4 =500;
		
		int i4 = 20000;	
		long l4 = 400000000L;
		
		byte b4 =10;
		byte b5 =50;
		
		//i4와 70의 합을 변수 result1에 저장해주세요
		
		int result1 = i4+70;  //i4가 int이기때문에 변수는 같은 변수끼리만 합할수있기때문에 result1 = int
		
		//i4와 b4의 합을 변수result2에 저장해주세요
		
		int result2 = i4 + b4; //int+bye => int+int  더 쎈쪽으로 변한다. 
		
		System.out.println(result2);
		
		long result3 = i4+100L;
		
		System.out.println(result3);
		
		int result4 = i4+'A'; // int +char => int +int= 20000+65
		
		System.out.println(result4);
		
		String result5 = i4+"hi"; //""더블따옴표는 스트링   int +string => string + string= "20000"+65
		
		System.out.println(result5);
		
		String result6 = i4+"10000";// "20000" +"10000" => "2000010000"
		
		System.out.println(result6);
		
		//VariableType vt = new
		
		
		
		
		
		int result7 = b4+b5; //byte +byte => int + int
		
		
		int result8 = 'a'+'b';
		
		System.out.println(result7);
		/*
		 9.casting
		  형변환/ 형태를 바꿈
		  -변수 또는 리터럴(값,식) 타입을 다른 타입으로 변환하는것  
		 */
				
		int aa = 67;
		
		char ch5 = (char)aa; //화를냄 char를 앞에써서 바꿔줄꺼에요 표현
		
		System.out.println(ch5);
		
		
		char ch6 = '김';
		
		int result10 = ch6; // 여기는 앞에 가로 안해도됨 왜냐면 캐릭터가 인트보다 작기때문에 담겨서 생략
				
		System.out.println(ch6); // byte>short>char>int>long>float>double
		
		//더 작은것으로 갈때는 소가로치고 한번더 지정
		
		
		
		float ff =3.14f;//실수형을 정수형으로 바꿀때는 소수점을 없애기 위함
		int ab = (int)ff;
		System.out.println(ab);		
				
		//int bbb = 10;
		//float result11 = (float)bbb/4
		//System.out.println(result11);
		
	
		
		
		
	}

	
	
	
}








