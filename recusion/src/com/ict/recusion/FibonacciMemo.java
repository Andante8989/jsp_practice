package com.ict.recusion;

public class FibonacciMemo {
	// 피보나치 수열 획기적으로 시간 줄일 수 있는 방법인 메모이제이션
	static long[] memo;
	public static long fibonacci(int n) {
		if (n <= 1) {
			return n;
		} else if (memo[n] != 0) {
			return memo[n];
		} else {
			return memo[n] = fibonacci(n - 1) + fibonacci(n - 2);
		}
	}

	public static void main(String[] args) {
		memo = new long[2001];
		System.out.println(fibonacci(1000));

	}

}
