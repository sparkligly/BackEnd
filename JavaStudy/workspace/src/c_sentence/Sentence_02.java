package c_sentence;

import java.util.Scanner;

public class Sentence_02 {	
	public static void main(String[] args) {//단축키  main + cntrl
		
	
			
		/*
		 1.반복문 (for문 wile문 do-wile문)
		 - 어떤작업이 반복적으로 수행되도록할때 사용한다. 
		 - 반복문은 주어진 조건을 만족하는동안 주어진 문장을 반복적으로 수행하므로	
		  조건식과 수행될 문장을 포함한다. 
		  for문은 주로 반복회수를 알고있을때 사용한다. 
		  wile문은 주로 반복힛수를 모를떄 사용한다. 	
		 	
	 	2. for문 
	 	-기본구조
	 	for(초기화;조건식;증감식){
	 	수행될문장
	 	}
	 	
	 	초기화 -> 조건식->수행->증감식 
	 	      ->조건식->수행->증감식
	 	
	 	*/
//		
//		System.out.println(0);
//		System.out.println(1);
//		System.out.println(2);
//		System.out.println(3);
//		System.out.println(4);
//		System.out.println(5);
//		System.out.println(6);
//		System.out.println(7);
//		System.out.println(8);
//		System.out.println(9);
//		System.out.println(10);
//		
		
		
		//시작0 끝10 증가량1
		
		for(int count=0;count<11;count++){
			System.out.println(count);
		}
		
		
		//1-10까지의 합을 구해줴요
		
		
//		int sum = 0;
//		sum += 1;
//		sum += 2;
//		sum += 3;
//		sum += 4;
//		.
//		.
//		sum += 10;
//System.out.println();
		
	
		int sum = 0;
			
		for(int a = 1;a<101;a++){
			sum+= a;
		}
		System.out.println(sum);
		//1-10까지중 짝수의 합게를 구해주세요
		int sum2 = 0;
		for(int i =1; i<11; i++){
			if(i%2==0){
				sum2 += i;
			}
		}
		System.out.println(sum2);
		
		
//		int sum = 0;
//		for(int a = 1;a<101;a++){
//			
//		}
//		
		
		
		
//		23_35까지의 곱을 구해주세요


//		시작23
//		끝35
//		종료
		long gob = 1;
//		gob = gob*23;   gob *= 23;
//		sum*24
//		sum*25
//		sum*26
//		sum*27
//		sum*28
//		sum*29
//		sum*30
//		sum*31
//		sum*32
//		sum*33
//		sum*34
//		sum*35
//		sum /10
//		시23 끝35증가량1
		
		//23< <35
		for(int count=23; count<36; count++){
			gob *= count;
		}	
		System.out.println(gob);

		
//		이중 for문 for문안에 반복되는 구문이 또있을떄  for문안에 또 for문 쓰기  
		//시작2 끝9 증감*1 
		
		for (int dan = 2; dan < 10; dan++) {
			for(int count= 1; count<10; count++){
				System.out.println(dan+"*"+count+"="+dan*count);
			}
		}

		
		//1.구구단 짝수단만 출력하세요//2.구구단 짝수단 그리고 홀수곱만 출력하세요
		for (int dan = 2; dan < 10; dan++) {//단
			for(int count= 1; count<10; count++){//카운트=곱
				if(dan%2==0 && count%2==1){
					System.out.println(dan+"*"+count+"="+dan*count);
				}
					
			}
			
		}

//		//while문
//		조건식과 수행될 문장을 포함한 블럭 {}으로 구성되어 있지만 
//		카운터로 사용할 변수롸 증감식을 이용해 for문과 같이 구성할수있다. 
//			기본구조
//		while(조건식){
//			수행될 문장,
//		}
		/////////////////////////////////////////////////////////////////////////////
		for (int i = 0; i < 10; i++){
			System.out.println(i);
		}
		
		///위와 같은 while문 반복횟수를 모를때 사용
		int i=0;//초기화
		while(i<0){//조건식
			System.out.println(i);
			i++;
		}
		//초기화 조건식 수행 증감식 순서
/////////////////////////////////////////////////////////////////////////////
		
		int sum3 = 0;
		for (int count = 23;  count < 45; count++) {
		sum3 +=count;
		}
		
		System.out.println(sum3);
		
		
		int count = 23;//초기화
		while(count<45){//조건식
			sum3 +=count;
			count++;
		}
		System.out.println(sum3);
	
		
		/////숙제
//		
//		for (int dan = 2; dan < 10; dan++) {
//			for(int count= 1; count<10; count++){
//				System.out.println(dan+"*"+count+"="+dan*count);
//			}
//		}
//		int count = 1;
//		int dan = 2;
//		while(){
//			count++
//			dan++
//			System.out.println(dan+"*"+count+"="+dan*count);
//		}

		//1.while문으로 바꾸기
		// 1 ~ ? 합계가 100이상이 되느냐 ?
		
//		int sum6 =0;
//		int count2 =0;
//		while(sum6<100)
//			count2++;
//		sum6+= count2;
//		}
//		System.out.println(count2);
//	
//		
//		int sum6 =0;
//		int count2 =1;
//	
//		while(true){
//			sum6 += count2;
//			if(sum6 >= 100){
//				break;
//			}
//			count2++;
//		}
//		System.out.println(count2);
	
		
		
		
		
		
		for (int j = 0; j < 20; j++) {
			if(j%2==0){
				continue; //continue;를 만나면 그 다음 문장을 실행하지않음. 다음단계로 넘길때 사용 
			}
			System.out.println(j);
		}
		
		
		
		
//		for(int count= 1; count<10; count++){
//			System.out.println(2+"*"+count+"="+2*count);
//		}
//
//		for(int count= 1; count<10; count++){
//			System.out.println(3+"*"+count+"="+3*count);
//		}
//
//		
//		for(int count= 1; count<10; count++){
//			System.out.println(4+"*"+count+"="+4*count);
//		}
//for(int count= 1; count<10; count++){
//			System.out.println(5+"*"+count+"="+5*count);
//		}
//
//		for(int count= 1; count<10; count++){
//			System.out.println(6+"*"+count+"="+6*count);
//		}
//or(int count= 1; count<10; count++){
//			System.out.println(3+"*"+count+"="+7*count);
//		}
//		
//
//		for(int count= 1; count<10; count++){
//			System.out.println(8+"*"+count+"="+8*count);
//		}
//		
//
//		for(int count= 1; count<10; count++){
//			System.out.println(9+"*"+count+"="+9*count);
//		}
		
		




//1.2*1=2
//	2*2=2

//System.out.println(2+"*"+1+"="+2*1);
//System.out.println(2+"*"+2+"="+2*2);
//System.out.println(2+"*"+3+"="+2*3);
//System.out.println(2+"*"+4+"="+2*4);
//System.out.println(2+"*"+5+"="+2*5);
//System.out.println(2+"*"+6+"="+2*6);
//System.out.println(2+"*"+7+"="+2*7);
//System.out.println(2+"*"+8+"="+2*8);
//System.out.println(2+"*"+9+"="+2*9);

//시작1 끝9 증가량*1

		//4.do-while
		
//		while문의 변형으로 기본구조는 while문과 유사하다. 
//		최소 1회 실행을한다. 
//		구조
//		do
//		{
//				수행될문장
//		}while(조건식);
	//
	//1.사용자로부터 문자를 입력받아서 
	//해당문자를 출력하는 구문을 만등다
	//단,"exit"입력하면 프로그램 종료

		Scanner sc = new Scanner(System.in);
		String str = null;
		do{
			System.out.println("입력하세요:");
			str = sc.next();
			//int str = sc.nextInt();
			System.out.println(str);
		}while(!"exit".equals(str));
		
	}	
	
}
	