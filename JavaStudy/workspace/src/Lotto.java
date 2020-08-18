package basic;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.TreeSet;

public class Lotto {
	
	public static void main(String[] args) {
		Lottos l = new Lottos();
		l.program();
	}//main
}

class Lottos {
	static final int PRICE = 1000;
	static final int MAX_QTY = 100;
	
	private void banner(){
		System.out.println("==========================");
		System.out.println("Lotto 프로그램");
		System.out.println("--------------------------");
		System.out.println("1. Lotto 구입");
		System.out.println("2. 프로그램 종료");
		System.out.println("==========================");
	}
	
	private void out(){
		System.out.println("\n감사합니다.");
		System.exit(0);
	}
	
	private ArrayList<ArrayList<Integer>> picker(){
		ArrayList<ArrayList<Integer>> lottoSet = new ArrayList<>();
		
		for(int i=0; i<100; i++){
			TreeSet<Integer> oneSet = new TreeSet<>();
			while(oneSet.size()<6){
				oneSet.add((int)(Math.random()*45+1));
			}
			lottoSet.add(new ArrayList(oneSet));
		}
		return lottoSet;
	}
	
	public void program(){
		try{
			while(true){
				ArrayList<ArrayList<Integer>> lottoSet = picker();
				Scanner in = new Scanner(System.in);
				banner();
				System.out.print("메뉴선택 : ");
				int input = 0;
				input = in.nextInt();
				if(input==1){
					buy(lottoSet);
				} else if(input==2){
					out();
				} else {
					System.out.println("1, 2만 입력 가능합니다.");
				}
			}
		} catch(Exception e) {
			System.out.println("숫자만 입력 가능합니다.");
		}
	}
	
	private void buy(ArrayList<ArrayList<Integer>> lottoSet){
		Scanner in = new Scanner(System.in);
		int input = 0;
		System.out.println();
		System.out.println("Lotto 구입 시작");
		System.out.println();
		System.out.println("("+ PRICE + "원에 로또번호 하나입니다.)");
		System.out.print("금액 입력 : ");
		input = in.nextInt();
		if(input<PRICE){
			System.out.println("\n입력 금액이 너무 적습니다. 로또번호 구입 실패!!!\n");
		} else if(input>=PRICE*(MAX_QTY+1)){
			System.out.println("\n입력 금액이 너무 많습니다. 로또번호 구입 실패!!!\n");
		} else {
			System.out.println();
			System.out.println("행운의 로또번호는 아래와 같습니다.");
			for(int i=0; i<input/PRICE; i++){
				System.out.println("로또번호"+(i+1)+" : "+lottoSet.get(i));
			}
			System.out.println();
			System.out.println("받은 금액은 " + input + "원이고 거스름돈은 " + input%PRICE + "원입니다.");
		}
	}
}
