/*
 * 0 ~ 9 사이의 난수를 20개 뽑아서 해당 난수가 나온 횟수를 계산한다.
 * EX) 0: 2개, 1: 3개, ..., 9: 0개
 * hint: 배열의 인덱스를 가지고 놀기
 */

package source4;

import java.util.Random;

public class Test {
	public static void main(String[] args) {
		Random r = new Random(); // Random 객체 => 난수(랜덤한 수) 생성 목적
		final int ARRAY_SIZE = 10; // 배열 사이즈
		final int LOOP_CNT = 20; // 반복문 반복 횟수
		int[] cnt = new int[ARRAY_SIZE]; // 생성된 20개의 난수들 중, 난수 0 ~ 9가 나온 횟수를 저장할 배열(각 요소들은 0으로 초기화됨)

		System.out.println("0 ~ 9 사이의 난수 20개를 뽑습니다.\n");
		System.out.print("생성된 난수: ");

		// LOOP_CNT번 반복문을 수행하여 난수 LOOP_CNT개를 생성(생성될 난수의 범위는 0 ~ 9)
		for (int i = 0; i < LOOP_CNT; i++) {
			int n = r.nextInt(ARRAY_SIZE); // 0이상 10(ARRAY_SIZE)미만의 랜덤 난수 생성(정수값)
			cnt[n] = cnt[n] + 1; // 해당 난수가 나온 횟수를 1 증가시킴

			// cnt[r.nextInt(ARRAY_SIZE)]++; // 위의 코드 2줄을 한졸로 줄이면 다음과 같이 표현할 수 있음

			// 20개의 뽑힌 난수들을 하나씩 나열하여 일렬로 출력
			System.out.print(n + " ");
		}

		System.out.println("\n=====================결과표시=====================");
		System.out.println("출력방법1: 일반 for문)");
		// 결과 출력 방법1: 일반적인 for문
		for (int i = 0; i < ARRAY_SIZE; i++)
			System.out.println(i + "가(이) 나온 횟수: " + cnt[i] + "회");

		System.out.println("\n출력방법2: 향상된 for문)");
		// 결과 출력 방법2: 향상된 for문(for-each문 => ArrayList, HashMap과 엮어서 자주 사용됨)
		int ind = 0; // 인덱스 넘버를 출력하기 위한 변수(0부터 시작) => 변수는 되도록이면 상단에 선언해주는것이 좋음

		for (int element : cnt)
			System.out.println(ind++ + "가(이) 나온 횟수: " + element + "회");

		// 5 ~ 13 사이의 난수 15개를 생성하고 5 ~ 13이 나온 횟수를 출력하시오.
	}
}