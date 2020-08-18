package c_sentence;
public class Sentence_01{
public static void main(String[] args) {

		//main ctrl+스페이스바
		/*1.조건문 (if,switch)
		  - 조건식과 문장을 포함하는 {}으로 구성되어 있다. 
		  - 조건식의 연산결과에 따라 프로그램의 실행흐름을 변경할수있다. 
		   
		  2.if문
		  -구조
		  if(조건식){
		  	조건식이 TRUE 일때 수행될 문장
		  }
		  
		  
		  
		  2.else문
		  -구조
		  if(조건식){
		  	조건식이 TRUE 일때 수행될 문장
		  }else{조건식이  false일때 수행할 문장
		  }
		
		
		
		  -구조
		  if(조건1){
		  	조건식이 TRUE 일때 수행될 문장
		  }else if(조건식2){  조건1이 false이고 조건2가 TRUE 수행할 문장
		  }else{조건식1/조건식2 가  false
			  }
		  }
		*/	
		
			
		//1. 변수 
		//int형 변수 c에 100 값의 입력해주세요
		int c= -100;
		//2.c의 값이 0보다 크면 "양수이다"를 출력해주세요
		if(c > 0 ){
			System.out.println("양수이다.");
		}
		
		//그렇지않으면 양수가 아니다. 
		if(c > 0 ){
			System.out.println("양수이다.");
		}else{
			System.out.println("양수가아니다.");
		}
		

		if (c > 0) {
			System.out.println("양수이다.");
		} else if (c < 0) {
			System.out.println("음수이다.");
		} else {
			System.out.println("0이다.");
		}
		  
			

			
//			
//			
//		0~100사이의 랜덤한 정수값을 score변수에 저장해주세요
//		
//		score 의 값이 90이상이면 "A"를 출력하세요
//		score 의 값이 80이상이면 "B"를 출력하세요
//		score 의 값이 70이상이면 "C"를 출력하세요
//		score 의 값이 60이상이면 "D"를 출력하세요
//		score 의 값이 60미만이면 "나가"를 출력하세요
//		
//		
//		int score = (int)(Math.random()*101+0);
//		System.out.println(score);
//		
//		if (score > 90) {
//			System.out.print("A"); //print 는  옆에 붙여주는거 
//			if (score >= 95) {
//				System.out.println("+"); //95이상이면 +붙영
//			} else {
//				System.out.println("-");
//			}
//		} else if (score >= 80) {
//			System.out.println("B");
//			
//			if (score>=85){
//			System.out.println("+");
//				else{
//					System.out.println("-");
//				}
//			}
//		} else if (score >= 70) {
//		    System.out.println("C");
//		} else if (score >= 60) {
//			System.out.println("D");
//		} else{
//			System.out.println("나가");
//		}
//			
//	}
//}
///*swich문
//  조건의 경우가 많을 때는 if 문 조다는 swich문을 활용하는 것이 좋다. 
//  더 간결하고 알아보기 쉽다. 
//  조건의 결과로 int형 범위의 정수값을 허용한다. 
// 
// 구조 
// switch(조건식){
//  case값1: 
//  	조건식과 값1이 같을때 수행될 문장
//  	break;
//  case값2: 
//  	조건식과 값2이 같을때 수행될 문장
//  	break;
//  case값3: 
//  	조건식과 값3이 같을때 수행될 문장
//  	break;
//  default: 
//  조건식과 일치하는 값이 없을때 수행된 문장
//  	//break;디폴트에는 없어도된다
//  }
// 
//  */
////1. 1-5사이의 랜덤란 정수값을 변수 r2에 저장해주세여
//
//	int r2 = (int)(Math.random()*5+1);
//	
//	 switch(5){
//	  System.out.println("영만빌딩당첨");
//	  	break;
//	  case값2: 
//		 System.out.println("영만빌딩당첨");
//	  	break;
//	  case값3: 
//		  System.out.println("영만빌딩당첨");
//	  	break;
//	  default: 
//		  System.out.println("영만빌딩당첨");
//	  	//break;디폴트에는 없어도된다
//	  }
//	 

//2. r2의 값이 5이면"영만빌딩 당첨"출력
//r2의 값이 4이면"람보르기니 당첨"출력
//r2의 값이 3이면"롤랙스 당첨"출력
//r2의 값이 2이면"샤넬백 당첨"출력
//r2의 값이 1이면"한강뷰 50평대 아파트 당첨"출력




	//숙제 스위치문으로  1-5사이의 랜덤란 정수값을 변수 r2에 저장해주세여
		
//		
//		
//	0~100사이의 랜덤한 정수값을 score변수에 저장해주세요
//	
//	score 의 값이 90이상이면 "A"를 출력하세요
//	score 의 값이 80이상이면 "B"를 출력하세요
//	score 의 값이 70이상이면 "C"를 출력하세요
//	score 의 값이 60이상이면 "D"를 출력하세요
//	score 의 값이 60미만이면 "나가"를 출력하세요
	int score = 1;
	
	switch(score/10){
	  case 10:case 9: 
		  System.out.print("A"); 
	  	break;
	  case 8: 
		  System.out.print("B"); 
	  case 7: 
		  System.out.print("C"); 
	  case 6: 
		  System.out.print("D"); 
	  	break;
	  default: 
		  System.out.print("나가"); 
	  	//break;디폴트에는 없어도된다
	  };
	 
	
}