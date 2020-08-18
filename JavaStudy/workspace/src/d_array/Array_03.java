package d_array;

public class Array_03 {
	public static void main(String[] args) {
		/*
		1. 다차원 배열
		  - 자바에서는 1차원 배열뿐만 아니라 2차원 이상의 다차원 배열도 허용한다.
		  - 선언
		    int[][] arr;
		    int[] arr[];
		    int arr[][];
		    
		  - 이차원 배열의 생성
		
		*/
		int[][] score = new int[][]{
										{1,2},
										{3,4,6},
										{7,8,9,0}
									};
		
		int[][] score2 = new int[3][];
		score2[0] = new int[3];
		score2[1] = new int[4];
		score2[2] = new int[2];
		
//		{
//			{0,0,0},
//			{0,0,0,0},
//			{0,0}
//		}
		System.out.println(score2[0][0]);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
