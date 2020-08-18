package h_javaLang;

public class JavaLang_basic {
	public static void main(String[] args) {
		/*
		1. java.lang 패키지
		  - java.lang패키지는 자바프로그래밍에 기본이 되는 클래스들을 포함하고 있다.
		    ex) String, System ....
		    
		2. Object클래스
		  - Object클래스는 멤버변수는 없이 11개의 메서드로 이루어져 있다.
		  
		  - boolean equals(Object obj)
		    : 매개변수로 객체의 참조변수를 받아서 비교하여 그 결과를 boolean값으로 돌려준다.
		    : 참조변수에 저장된 주소값이 같은지를 판단할수 밖에 없다.
		    : 주소값이 아닌 멤버변수가 가지고 있는 값을 비교하기 위해서는 equals메서드를
		       오버라이드 하면 된다.
		       
		    : equals메서드가 오버라이드 되어있는 클래스들
		      => String, Date, File, wrapper클래스
		      
		  - hashCode() - 10진수로 이루어짐
		    : 객체의 주소를 이용하여 해시코드를 반환한다.
		    : String클래스는 문자열의 내용이 같으면 같은 해시코드를 반환한다.
		    
		  - toString()
		    : 인스턴스에 대한 정보를 문자열로 제공할 목적으로 작성
		    : 기본적인 toString()
		      return getClass().getName()+"@"+Integer.toHexString(hashCode());
		    
		
		
		
		
		
		
		*/
		
		
		
		
		
	}
}

























package h_javaLang;

public class EqualsTest01 {
	public static void main(String[] args) {
		Value v1 = new Value(10);
		Value v2 = new Value(10);
		System.out.println(v1.toString());
		System.out.println(v1 == v2);
		System.out.println(v1.equals(v2));
		
	}
}

class Value{
	int value;
	
	public Value(int value) {
		this.value = value;
	}
	
}












































package h_javaLang;

public class EqualsTest02 {
	public static void main(String[] args) {
		Person p1 = new Person(9511302070545L);
		Person p2 = new Person(9511302070545L);
		System.out.println(p1);
		System.out.println(p2);
		System.out.println(p1.hashCode());
		
		System.out.println(p1 == p2);
		
		if(p1.equals(p2)){
			System.out.println("같은사람");
		}else{
			System.out.println("다른사람");
		}
		
	}
}

class Person{
	long regNo;
	
	Person(long regNo){
		this.regNo = regNo;
	}

	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if(obj != null && obj instanceof Person){
			result = regNo == ((Person)obj).regNo;
		}
		return result;
	}
	
}

















































