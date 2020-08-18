package b_operation;

public class Operation02 {
	public static void main(String[] args) {// 프로그램의 시작

		/*
		 * BYTE BOOLEAN SHORT INT LONG FLOAT DOUBLE CHAR
		 * 
		 * 3.비트전환연산자(~) -정수형과 char형에만 사용가능하다. -피연산자를 2진수로 표현했을때 0은1로 1은 0으로 바꾼다.
		 */
		byte b3 = 10; // 00001010 1=> -11 1의보수
		int result3 = ~b3; // 11110101 1=> 0
		// int result3 = ~b4 + 1; 11110110 -10=> 10의 2의보수

		System.out.println(result3);

	}
}
