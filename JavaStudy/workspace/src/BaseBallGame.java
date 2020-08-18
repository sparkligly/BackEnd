package basic;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

/*
 	문제 ) Set을 이용하여 숫자 야구 게임 프로그램을 작성하시오.
 		 컴퓨터의 숫자는 난수를 이용해서 구한다.
 		 (출력할 때 스트라이크는 'S'로 볼은 'B'로 출력한다.)
 		 
 		 예시)
 		 컴퓨터의 난수 ==> 9 5 7 (중복되지 않는 숫자)
 		 
 		 실행예시)
 		 	숫자입력 : 3 5 9
 		 	3 5 9 ==> 1S 1B
 		 	      :
 		 	      :
 		 	      :
 		 	9 5 7 ==> 3S 0B
 		 	4번째만에 맞췄습니다.
 */

public class BaseBallGame {
	public static void main(String[] args) {
		Set<Integer> hs = new HashSet<>(); //중복되지 않는 값
		ArrayList<Integer> userList = new ArrayList<>(); 
		Scanner sc = new Scanner(System.in);
		// 컴퓨터의 난수 3개
		while (hs.size() < 3) {
			int pcRandom = (int) (Math.random() * 9 + 1);
			hs.add(pcRandom);
		}
		System.out.println("컴퓨터의 난수 : "+hs);
		
//		System.out.print("숫자입력 : ");
//		for (int i = 0; i < 3; i++) {
//			userList.add(sc.nextInt());
//		}
//		System.out.println(userList);
		
		ArrayList<Integer> pcList = new ArrayList<>(hs);
		
		int s = 0; //스트라이크의 개수를 나타내주는 변수
		int b = 0; //볼의 개수를 나타내주는 변수
		int cnt = 0; //돌린 개수
		
		while (s < 3) {
			
			for (int i = 0; i < 3; i++) { //사용자에게 3개의 숫자를 입력받는다.
				System.out.print("숫자를 입력하세요.");
				userList.add(sc.nextInt());
			}
			System.out.println(userList);
			for (int i = 0; i < 3; i++) {
				if (pcList.get(i).equals(userList.get(i)))  { //pcList와 userList의 숫자와 위치가 같다면 스트라이크를 하나 올려준다.
					s++;
				}else if(pcList.get(i).equals(userList.get(0))){ //pcList와 userList의 숫자가 같다면 볼을 하나 올려준다.
					b++;
				}else if(pcList.get(i).equals(userList.get(1))){ //pcList와 userList의 숫자가 같다면 볼을 하나 올려준다.
					b++;
				}else if(pcList.get(i).equals(userList.get(2))){ //pcList와 userList의 숫자가 같다면 볼을 하나 올려준다.
					b++;
				}
				
			}
			userList.clear(); //사용자가 입력한 값 초기화
			cnt++;
			System.out.print(s+"S"+b+"B");
			System.out.println();
			if (s != 3) {
				s = 0; //스트라이크 초기화	
			}
			b = 0; //볼 초기화
		}
		System.out.println(cnt+"번째만에 번호를 맞추셨습니다.");
		
	}
}









