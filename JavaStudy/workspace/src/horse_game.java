package basic;

import java.util.ArrayList;
import java.util.Arrays;

/*
	10마리의 말들이 경주를 하는 경마 프로그램을 작성하시오.
	
	말은 Horse라는 이름의 클래스로 구성하고 
	이 클래스는 말이름(String), 등수(int), 현재위치(int)를 멤버변수로 갖는다. 
	그리고 이 클래스에는 등수를 오름차순으로 처리할 수 있는 기능이 있다.(Comparable구현)
	
	경기 구간은 1 ~ 50 구간으로 되어있다. (알파벳 출력구간 부분)
	
	일정한 시간마다 말들의 위치를 출력한다. 
	예)
	1번말 --->----------------------------------------------
	2번말 ------>-------------------------------------------
	3번말 -->-----------------------------------------------
	4번말 ---------->---------------------------------------
	 :
	10번말 ---->---------------------------------------------
	
	출력하는 쓰레드 1개
	Horse 클래스 자체를 쓰레드로 만들어 줘도 됨
	
	경기가 끝나면 등수가 나와야 한다. 1등 : 몇번말, 2등 : 몇번말
	 
*/
public class ThreadTest15 {
	public static void main(String[] args) {
		
		Horse[] horse = new Horse[10];
		for(int i=0; i<10; i++){
			horse[i] = new Horse((i+1)+"번말");	
		}

		DisplayHorse dh = new DisplayHorse(horse);
		dh.start();
		for(int i=0; i< horse.length;i++){
			horse[i].start();
		}
		
		try {
			for(int i=0; i< horse.length; i++){
				horse[i].join();
			} 
			Thread.sleep(300);
		}catch (InterruptedException e) { }
		
		System.out.println();
		dh.interrupt();
	}
	
}

//출력하는 쓰레드
class DisplayHorse extends Thread{
	private static int timeRanking = 1;
	
	private Horse[] horse;
	
	
	public DisplayHorse(Horse[] horse){
		this.horse = horse;
	}
	
	@Override
	public void run(){
		while(true){
			try {
				Thread.sleep(300);
			} catch (InterruptedException e) {
				System.out.println("경기 종료!!! 경기 결과!!!");
				Arrays.sort(horse);
				for(int i=0; i<horse.length;i++){
					System.out.println((i+1)+"등\t: "+horse[i].getHorseName());
				}
				return;
			}
			System.out.println("\n\n\n\n\n\n\n\n\n\n");
			for(int i=0; i<horse.length; i++){
				System.out.print(horse[i].getHorseName()+"\t: ");
				if(horse[i].getLocation() == 50){
					for(int j=0; j<50; j++){
						System.out.print("-");
					}
					System.out.println(" "+horse[i].getHorseName()+" "+horse[i].getRank()+"등");
				}else{				
					for(int j=0; j<50; j++){
						if(j == horse[i].getLocation()){
							System.out.print(">");
						}else{
							System.out.print("-");
						}
					}
					horseRank();//실시간 등수 확인 
					System.out.println(" : "+horse[i].getTimeRank()+"등");
				}
			}
		}
	}
	
	//실시간 등수 확인하는 메서드
	public void horseRank(){
		//새로운 배열 만들어야함 
		Horse[] horseTR = new Horse[horse.length];
		//배열을 만들어서, 현재 위치별로 배열을 정렬하고, 인덱스값을 실시간랭킹에 넣어주고 프린트한다. 
		//정렬
		for(int i=0;i<horse.length;i++){
			horseTR[i] = horse[i];
		}
		for(int i=0; i<horseTR.length;i++){
			for(int j=0; j<horseTR.length;j++){
				if(horseTR[i].getLocation() > horseTR[j].getLocation()){
					Horse temp;
					temp = horseTR[i];
					horseTR[i] = horseTR[j];
					horseTR[j] = temp;
				}
			}
		}
		for(int i=0; i<horse.length;i++){
			for(int j=0; j<horseTR.length;j++){
				if(horse[i].getHorseName() == horseTR[j].getHorseName()){
					horse[i].setTimeRank(j+1);
				}
			}
		}
	}
	
}

class Horse extends Thread implements Comparable<Horse>{

	private String horseName;
	private int location =0;
	private static int ranking = 1;
	private int rank;
	private int timeRank;
	
	Horse(String horseName){
		this.horseName = horseName; 
	}
	

	//현재 위치
	@Override
	public void run() {
		for(int i=0; i<50;i++){
			try {
				Thread.sleep((int)(Math.random()*800+300));
				this.location++;
			} catch (InterruptedException e) {	}
		}
		this.rank = ranking;
		ranking++;
	}
	

	public String getHorseName() {
		return horseName;
	}
	public void setHorseName(String horseName) {
		this.horseName = horseName;
	}
	
	public Integer getRank() {
		return rank;
	}
	public void setRank(Integer rank) {
		this.rank = rank;
	}
	
	public int getLocation() {
		return location;
	}
	public void setLocation(int location) {
		this.location = location;
	}
	
	
	public int getTimeRank() {
		return timeRank;
	}

	public void setTimeRank(int timeRank) {
		this.timeRank = timeRank;
	}


	@Override
	public int compareTo(Horse h) {
		return Integer.compare(this.rank, h.rank);
	}
	
}

