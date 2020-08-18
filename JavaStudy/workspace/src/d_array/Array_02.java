package d_array;

import java.util.Arrays;

public class Array_02 {
	public static void main(String[] args) {
		/*
		1. 정렬(sort)
		  - 어떤 데이터를 빠르고 쉽게 찾기 위해 일정한 순서대로 데이터를 가지런히 나열하는 작업
		  - 버블정렬, 선택정렬, 삽입정렬
		  
		2. 버블정렬
		  - 인접한 데이터간에 교환이 계속해서 일어나면서 정렬이 이루어진다.
		  - 회전이 진행됨에 따라 가장 큰수가 가장 뒤에 확정된다.
		*/
		
		//1. 5,2,3,1,4  5개의 숫자를 변수 arr에 저장해주세요
		int[] arr = new int[]{5,2,3,1,4};
		//2. arr을 버블정렬을 이용하여 오름차순으로 정렬해주세요
		//시작 0 끝 3 증가 1
		for (int i = 0; i < arr.length-1; i++) { // 회전
			System.out.println(i+1+"회전");
			for(int j = 0 ;j<arr.length-1-i;j++){ //버블
				if(arr[j]>arr[j+1]){
					int temp=arr[j];
					arr[j]=arr[j+1];
					arr[j+1]=temp;
				}
				for(int k=0;k<arr.length;k++){
					System.out.print(arr[k]+" ");
				} 
				System.out.println();
			}
		}
		
		/*
		2. 선택정렬(select sort)
		  - 정렬을 대상으로 최소값을 찾아서 기준과 교체하는 방식이다.
		
		*/
		int[] arr2 = {5,2,3,1,4};
		for (int i = 0; i < arr2.length-1; i++) {
			int min = arr2[i];
			int bang = i;
			for(int count=i+1; count < arr2.length; count++){
				if(min>arr2[count]){
					min=arr2[count];
					bang = count;
				}
			}
			int temp = arr2[i];
			arr2[i] = arr2[bang];
			arr2[bang] = temp;
			System.out.println(Arrays.toString(arr2));
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
