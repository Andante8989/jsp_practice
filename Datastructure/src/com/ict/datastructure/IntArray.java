package com.ict.datastructure;

import java.util.Arrays;

public class IntArray {
	
	static int count = 0;
	
	// 데이터 넣는 메서드
	public static void addArr(int num, int[] arr) {
		if(count > 4) {
			System.out.println("데이터를 추가로 넣을 수 없습니다.");
		} else {
			arr[count] = num;
			count++;
		}
		System.out.println("현재 리스트 내에 자료가 " + count + "개 있습니다.");
	}
	
	// 데이터 빼는 메서드
	public static void removeArr(int[] arr) {
		if(count - 1 == -1) {
			System.out.println("삭제할 데이터가 없습니다.");
			count = 0;
		} else {
			count--;
			arr[count] = 0;
		}
		System.out.println("현재 리스트 내에 자료가 " + count + "개 있습니다.");
	}
	
	// 내장된 데이터가 몇갠지 파악해주는 기능이 없습니다
	public static void getArrLength(int[] arr) {
		System.out.println("현재 리스트 내에 자료가 " + count + "개 있습니다.");
	}

	public static void main(String[] args) {
		int[] iArr = new int[5];
		System.out.println(Arrays.toString(iArr));
		addArr(10, iArr);
		addArr(2, iArr);
		addArr(8, iArr);
		getArrLength(iArr);
		System.out.println("---------------");
		addArr(5, iArr);
		addArr(129, iArr);
		addArr(5, iArr);
		addArr(129, iArr);
		removeArr(iArr);
		removeArr(iArr);
		getArrLength(iArr);
		removeArr(iArr);
		removeArr(iArr);
		removeArr(iArr);
		removeArr(iArr);
		
		System.out.println(Arrays.toString(iArr));
		System.out.println(iArr.length);
	}

}
