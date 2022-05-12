package com.ict.recusion;

public class RecursiveFibonacci {
	
	static long count = 0;
	
	public static int fibonacci(int num) {
		count++;
		if (num == 1) {
			return 0;
		} else if(num == 2) {
			return 1;
		} else {
			return fibonacci(num-1) + fibonacci(num-2);
		}
		
	}

	public static void main(String[] args) {
		System.out.println(fibonacci(11));
		System.out.println("호출 횟수 : " + count);
		

	}

}
