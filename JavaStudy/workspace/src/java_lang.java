package h_javaLang;

public class JavaLang_basic {
	public static void main(String[] args) {
		/*
		1. java.lang ��Ű��
		  - java.lang��Ű���� �ڹ����α׷��ֿ� �⺻�� �Ǵ� Ŭ�������� �����ϰ� �ִ�.
		    ex) String, System ....
		    
		2. ObjectŬ����
		  - ObjectŬ������ ��������� ���� 11���� �޼���� �̷���� �ִ�.
		  
		  - boolean equals(Object obj)
		    : �Ű������� ��ü�� ���������� �޾Ƽ� ���Ͽ� �� ����� boolean������ �����ش�.
		    : ���������� ����� �ּҰ��� �������� �Ǵ��Ҽ� �ۿ� ����.
		    : �ּҰ��� �ƴ� ��������� ������ �ִ� ���� ���ϱ� ���ؼ��� equals�޼��带
		       �������̵� �ϸ� �ȴ�.
		       
		    : equals�޼��尡 �������̵� �Ǿ��ִ� Ŭ������
		      => String, Date, File, wrapperŬ����
		      
		  - hashCode() - 10������ �̷����
		    : ��ü�� �ּҸ� �̿��Ͽ� �ؽ��ڵ带 ��ȯ�Ѵ�.
		    : StringŬ������ ���ڿ��� ������ ������ ���� �ؽ��ڵ带 ��ȯ�Ѵ�.
		    
		  - toString()
		    : �ν��Ͻ��� ���� ������ ���ڿ��� ������ �������� �ۼ�
		    : �⺻���� toString()
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
			System.out.println("�������");
		}else{
			System.out.println("�ٸ����");
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

















































