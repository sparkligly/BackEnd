package basic;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
/*
	이름, 주소, 전화번호를 멤버로 갖는 Phone클래스를 만들고,
	이 Phone클래스를 이용하여 전화번호 정보를 관리하는 프로그램을 완성하시오.
	
	이 프로그햄에는 전화번호를 등록, 수정, 삭제, 검색, 전체출력하는 기능이 있다.
	
	전체 전화번호 정보는 Map을 이용하여 관리한다. 
	(key는 이름으로하고, value는 Phone클래스의 인스턴스로 한다.)
	
	실행예시)
	=======================
		전화번호 관리 프로그램 	
	=======================
		1. 전화번호 등록
		2. 전화번호 수정
		3. 전화번호 삭제
		4. 전화번호 검색
		5. 전화번호 전체 출력
		0. 프로그램종료
	-----------------------
	번호입력 : 1
	
	새롭게 등록할 전화번호 정보를 입력하세요.
	이름 >> 홍길동
	전화번호 >> 010-1234-5678
	주소 >> 대전시
	
	'홍길동' 전화번호 정보가 저장되었습니다. 
	
	=======================
		전화번호 관리 프로그램 	
	=======================
		1. 전화번호 등록
		2. 전화번호 수정
		3. 전화번호 삭제
		4. 전화번호 검색
		5. 전화번호 전체 출력
		0. 프로그램종료
	-----------------------
	번호입력 : 5
	
	=======================================
	번호		이름 		전화번호		    주소
	=======================================
	 1        홍길동     010-1234-5678   대전시
	 :
	 
	=======================================
	출력완료...
	
	=======================
		전화번호 관리 프로그램 	
	=======================
		1. 전화번호 등록
		2. 전화번호 수정
		3. 전화번호 삭제
		4. 전화번호 검색
		5. 전화번호 전체 출력
		0. 프로그램종료
	-----------------------
	번호입력 : 0
	
	이용해주셔서 감사합니다. 
	

*/
import java.util.Scanner;
import java.util.Set;
import java.util.regex.Pattern;

import javax.swing.text.html.HTMLDocument.Iterator;
/*

	이름, 주소, 전화번호를 멤버로 갖는 phone클래스를 만들고,
	이 phone클래스를 이용하여 전화번호 정보를 관리하는 프로그램을 완성하시오.
	 
	이 프로그램에는 전화번호를 등록, 수정, 삭제, 검색, 전체출력하는 기능이 있다.
	 
	전체 전화번호 정보는 Map을 이용하여 관리한다.
	(Key는 이름으로하고 value는 phone클래스의 인스턴스로 한다.)
	 
	- 저장 파일명 : d:/d_other/phoneBook.dat
	- 프로그램이 처음 시작되면 저장파일을 읽어온다.
	- 6번메뉴를 선택하면 지정된 저장 파일로 저장한다. 
	- 프로그램이 종료될 때 데이터가 변경되었고 저장이 안된 상태이면 
	   저장하고 종료되도록 한다. 
	 
	실행예시)
	============================
	   전화번호 관리프로그램
	============================
	 1. 전화번호 등록
	 2. 전화번호 수정
	 3. 전화번호 삭제
	 4. 전화번호 검색
	 5. 전화번호 전체 출력
	 6. 전화 번호 저장
	 0. 프로그램 종료
	----------------------------
	 번호입력 : 5
	 
	==================================
	 번호   이름      전화번호        주소
	==================================
	 1      홍길동   010-1111-1111 대전시
	 ~
	==================================
	 출력완료...
	 
	============================
	    전화번호 관리프로그램
	============================
	 1. 전화번호 등록
	 2. 전화번호 수정
	 3. 전화번호 삭제
	 4. 전화번호 검색
	 5. 전화번호 전체 출력
	 0. 프로그램 종료
	----------------------------
	 번호입력 : 5
	 
	 프로그램을 종료합니다...
	 
	============================
	    전화번호 관리프로그램
	============================
	 1. 전화번호 등록
	 2. 전화번호 수정
	 3. 전화번호 삭제
	 4. 전화번호 검색
	 5. 전화번호 전체 출력
	 0. 프로그램 종료
	----------------------------
	번호입력 : 1
	새롭게 등록할 전화번호 정보를 입력하세요.
	이름 >> 홍길동
	전화번호 >> 010-1111-1111
	주소 >> 대전시
	 
	'홍길동' 전화번호 정보가 저장되었습니다.

*/

class Phone implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String name;
	private String num;
	private String addr;
	
	
	Phone(String name, String num, String addr){
		this.name = name;
		this.num = num;
		this.addr = addr;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Phone other = (Phone) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return name  + "   " + num + " " + addr;
	}
	
}

public class PhoneBookTest {
	
	static Scanner scan = new Scanner(System.in);
	static Map<String, Phone> phoneBook = new HashMap<>(); //key는 이름, value는 전화번호 부 객체
	static boolean isSaved = true;
	
	
	public int displayMenu(){ 
		System.out.println("=======================");
		System.out.println("    전화번호 관리 프로그램	   ");
		System.out.println("=======================");
		System.out.println("    1. 전화번호 등록	   ");
		System.out.println("    2. 전화번호 수정	   ");
		System.out.println("    3. 전화번호 삭제	   ");
		System.out.println("    4. 전화번호 검색	   ");
		System.out.println("    5. 전화번호 전체 출력	   ");
		System.out.println("    6. 전화번호 저장	   ");
		System.out.println("    0. 프로그램 종료	   ");
		System.out.println("-----------------------");
		System.out.println("번호입력 : ");
		int choice = scan.nextInt();
		return choice;
	}
	
	//이름을 입력받는 메서드 
	public String inputName(){
		try{
			Scanner s = new Scanner(System.in);
			String name;
			System.out.println("등록할 이름을 입력하세요.");
			System.out.println("이름 >> ");
			name = s.next();
			//중복검사
			if(nameCheck(name) == true){
				return name;
			}
		}catch(Exception e){
			System.out.println("잘못입력하셨습니다.");
		}
		return null;
	}
	
	//중복검사하는 메서드 
	public boolean nameCheck(String name){
		for(String key : phoneBook.keySet()){
			if(name.equals(key)){
				System.out.println("이미 존재하는 이름입니다. ");
				return false;
			}
		}
		return true;
	}
	
	
	//핸드폰 번호를 입력받는 메서드
	public String inputMemberPhone() {
		String phone = "";
		while (true) {
			System.out.print("핸드폰번호(000-0000-0000) >> ");
			phone = scan.next();
			if (checkMemPhone(phone)) {
				break;
			} else {
				System.out.println("핸드폰번호를 정확히 입력해주세요!");
			}
		}
		return phone;
	}
	
	//핸드폰 번호 정규식
	public boolean checkMemPhone(String mem_phone) {// 핸드폰번호 : 010-NNN(N)-NNNN
		String patternMPhone = "01[01]-[0-9]{3,4}-[0-9]{4}";
		return Pattern.matches(patternMPhone, mem_phone);
	}
	
	//주소 입력 받는 메서드 
	public String inputAddr() {
		Scanner s = new Scanner(System.in); 
		String addr;
		System.out.print("주소 >> ");
		addr = s.nextLine();
		return addr;
	}
	
	//등록되어있는 이름을 입력받는 메서드 
	public String updateName(){
		try{
			Scanner s = new Scanner(System.in);
			String name;
			System.out.println("이름 >> ");
			name = s.next();
			//중복검사
			if(updateNameCheck(name) == true){
				return name;
			}
		}catch(Exception e){
			System.out.println("잘못입력하셨습니다.");
		}
		return null;
	}
		
	//수정할 이름 중복검사하는 메서드 
	public boolean updateNameCheck(String name){
		for(String key : phoneBook.keySet()){
			if(name.equals(key)){
				return true;
			}
		}
		System.out.println("이름을 찾을 수 없습니다.");
		return false;
	}
	
	
	public void addPhone(){
		String name;
		String num;
		String addr;
		name = inputName();
		if(name != null){
			num = inputMemberPhone();
			addr = inputAddr();
			
			Phone p = new Phone(name, num, addr);
			phoneBook.put(name, p);
			isSaved=false;
			System.out.println(name+"의 전화번호가 저장되었습니다.");
		}else{
			return;
		}
	}
	
	public void updatePhone(){
		//수정할 내용을 받아 p객체에 저장하고, Map의 이름값을 비교해서 put해준다. 
		String name;
		String num;
		String addr;
		//Map의 key값 가져오기
		System.out.println("수정할 이름을 입력하세요");
		name = updateName();
		if(name != null){
			for(String key : phoneBook.keySet()){
				if(name.equals(key)){
					num = inputMemberPhone();
					System.out.println("주소 >> ");
					addr = inputAddr();
					Phone p = new Phone(name, num, addr);
					phoneBook.put(name, p);
//					phoneBook.put(name,new Phone(name, num, addr)); 이렇게 하면 코드 한줄 더 줄일 수 있다.
					isSaved=false;
					System.out.println(name+"의 정보가 수정되었습니다.");
					return;
				} 
			}
		}
	}
	
	
	//삭제하는 메서드 
	public void deletePhone(){
		String name;
		System.out.println("삭제할 이름을 입력하세요");
		name = updateName();
		if(name != null){
			if(phoneBook.containsKey(name) == true){
				phoneBook.remove(name);
				isSaved=false;
				System.out.println(name+"의 전화번호가 삭제되었습니다.");
				return;
			}
		}else{
			return;
		}
	}
	
	//검색하는 메서드 
	public void selectPhone(){
		String name;
		System.out.println("검색할 이름을 입력하세요");
		name = updateName();
		if(phoneBook.containsKey(name) == true){
			System.out.println("=======================================================");	
			System.out.println(" 이름     전화번호	\t주소");
			System.out.println("=======================================================");	
			System.out.println(" "+phoneBook.get(name));	
			return;
		}else{
			return;
		}
	}
	
	
	//전체 조회 하는 메서드 
	public void showPhone(){
		System.out.println("=======================================");	
		System.out.println("번호    이름     전화번호	  \t주소");
		System.out.println("=======================================");	
		int a =1;
		for(Phone value : phoneBook.values()){
			System.out.println(" "+a+"   "+ value);
			a++;
		}
		System.out.println("---------------------------------------");
		System.out.println("출력완료...");
	}

	
	//프로그램을 시작하는 메서드 
	public void phoneBookStart(){
		inputPhoneBook();
		while(true){
			int choice = displayMenu();
			switch(choice){
			case 1 :
				addPhone();
				break;
			case 2 :
				updatePhone();
				break;
			case 3: 
				deletePhone();
				break;
			case 4:
				selectPhone();
				break;
			case 5:
				showPhone();
				break; 
			case 6: 
				outputPhoneBook();
				break;
			case 0 :
				exid();
				break;
			     // 시작메서드 종료
			default :
				System.out.println("번호를 잘못 선택했습니다. 다시입력바랍니다.");
			}
		}
	}
	
	//전화번호 정보 저장하기
	public void outputPhoneBook(){
		try {
			ObjectOutputStream oos = new ObjectOutputStream(
					new BufferedOutputStream(
							new FileOutputStream("d:/d_other/phoneBook.dat")
					)
			);
			for(Phone value : phoneBook.values()){
				oos.writeObject(value);
			}
			
			oos.close();
			isSaved=true;
			System.out.println("전화 번호 저장 완료 ...");
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
	//저장되어있는 전화번호 정보 불러오기
	public void inputPhoneBook(){
		try {
			ObjectInputStream ois = new ObjectInputStream(
					new BufferedInputStream(
							new FileInputStream("d:/d_other/phoneBook.dat")
					)
			);
			
			Object obj = null;
			int a =1;

			System.out.println("=======================================");	
			System.out.println("번호    이름     전화번호	  \t주소");
			System.out.println("=======================================");	
			while((obj=ois.readObject()) != null){
				Phone pb = (Phone)obj;
				System.out.println(a+pb.getName()+pb.getNum()+"\t"+pb.getAddr());
				phoneBook.put(pb.getName(), pb); //저장된 전화번호 정보를 불러와서 현제데이터에 저장하기
				a++;
			}
			
			System.out.println("---------------------------------------");
			System.out.println("출력완료...");
			
		} catch (IOException e) {
			// TODO: handle exception
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void exid(){
					
		if(isSaved == true){
			System.out.println();
			System.out.println("프로그램을 종료합니다.");
			System.exit(0);
		}
		
		if(isSaved == false){
			System.out.println("수정된 전화번호 정보가 존재합니다. 자동으로 저장됩니다.");
			outputPhoneBook();
			System.out.println();
			System.out.println("프로그램을 종료합니다.");
			System.exit(0);
		}
	}

	public static void main(String[] args) {
		new PhoneBookTest().phoneBookStart();
			
	}
	


}
