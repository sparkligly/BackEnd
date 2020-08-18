package d_array;

public class Array_01 {
	public static void main(String[] args) {
		/*
		1. 배열(array)이란?
		  - 같은 타입의 여러변수를 하나의 묶음으로 다루는 것.
		  
		2. 배열의 선언
		  - 원하는 타입의 변수를 선언하고 변수 또는 타입에 배열임을 의미하는 []를 붙여주면 된다.
		    ex) 변수타입[] 변수명;
		         변수타입 변수명[];
		         
		3. 배열의 생성
		  - 배열을 선언한 다음에는 배열을 생성해야 된다.
		  - 배열을 생성할때는 연산자 new와 함께 배열의 타입과 크기를 지정해 주어야 한다.
		    ex) int[] score = new int[3];
		        int[] score = new int[]{10,20,30};
		        int[] score = {10,20,30};
		
		
		*/
		int score1 = 100;
		int score2;
		int score3;
		
		int[] score = new int[3];
//		System.out.println(score[0]);
//		System.out.println(score[1]);
//		System.out.println(score[2]);
		// 시작 : 0  끝 : 2  증가량 : 1
		for(int count=0;count<score.length;count++){
			System.out.println(score[count]);
		}
		
		
		//2. score의 0번방에는 0  1번방에는 10  2번방에는 20을 저장해주세요
//		score[0] = 0;
//		score[1] = 10;
//		score[2] = 20;
		
		for (int count = 0; count < score.length; count++) {
			score[count] = count*10; 
		}
		
		//1. 6과목의 점수를 저장할수 있는 변수 subject를 선언 및 생성해주세요
		int[] subject = new int [6];
		//2. subject의 각방에 0~100점사이의 랜덤한 정수값을 저장해주세요
		for(int i=0;i<subject.length;i++){
			subject [i] =(int)(Math.random()*101);
		}
		
		//3. subject각 방의 값을 출력해주세요
		for(int count = 0;count<subject.length;count++){
			System.out.println(subject[count]);
		}
		//4. 과목 합계를 구해주세요
		int sum = 0;
		for(int count = 0; count<subject.length; count++){
			sum += subject[count];
		}
		System.out.println(sum);	
		
		//5. 과목평균을 구해주세요 
		//   단. 소숫점 세번째 자리에서 반올림하여 두번째 자리까지 표현해주세요
		float avg = (int)((float)sum/subject.length*100+0.5)/100f;
		System.out.println(avg);
		
		//6. subject의 점수중 최대값을 구해주세요
		//   단. 최대값의 기본값을 0으로 해서는 안됩니다.
		int max = subject[0];
		for(int count=1; count < subject.length; count++){
			if(max<subject[count]){
				max=subject[count];
			}
		}
		System.out.println(max);
			
		//7. subject의 점수중 최소값을 구해주세요
		//   단. 최소값의 기본값을 100으로 해서는 안됩니다.
		int min = subject[0];
		for(int count=1; count < subject.length; count++){
			if(min>subject[count]){
				min=subject[count];
			}
		}
		System.out.println(min);
		
	}
}
