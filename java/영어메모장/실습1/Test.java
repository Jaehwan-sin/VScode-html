/*
 * 0 ~ 9 ������ ������ 20�� �̾Ƽ� �ش� ������ ���� Ƚ���� ����Ѵ�.
 * EX) 0: 2��, 1: 3��, ..., 9: 0��
 * hint: �迭�� �ε����� ������ ���
 */

package source4;

import java.util.Random;

public class Test {
	public static void main(String[] args) {
		Random r = new Random(); // Random ��ü => ����(������ ��) ���� ����
		final int ARRAY_SIZE = 10; // �迭 ������
		final int LOOP_CNT = 20; // �ݺ��� �ݺ� Ƚ��
		int[] cnt = new int[ARRAY_SIZE]; // ������ 20���� ������ ��, ���� 0 ~ 9�� ���� Ƚ���� ������ �迭(�� ��ҵ��� 0���� �ʱ�ȭ��)

		System.out.println("0 ~ 9 ������ ���� 20���� �̽��ϴ�.\n");
		System.out.print("������ ����: ");

		// LOOP_CNT�� �ݺ����� �����Ͽ� ���� LOOP_CNT���� ����(������ ������ ������ 0 ~ 9)
		for (int i = 0; i < LOOP_CNT; i++) {
			int n = r.nextInt(ARRAY_SIZE); // 0�̻� 10(ARRAY_SIZE)�̸��� ���� ���� ����(������)
			cnt[n] = cnt[n] + 1; // �ش� ������ ���� Ƚ���� 1 ������Ŵ

			// cnt[r.nextInt(ARRAY_SIZE)]++; // ���� �ڵ� 2���� ������ ���̸� ������ ���� ǥ���� �� ����

			// 20���� ���� �������� �ϳ��� �����Ͽ� �Ϸķ� ���
			System.out.print(n + " ");
		}

		System.out.println("\n=====================���ǥ��=====================");
		System.out.println("��¹��1: �Ϲ� for��)");
		// ��� ��� ���1: �Ϲ����� for��
		for (int i = 0; i < ARRAY_SIZE; i++)
			System.out.println(i + "��(��) ���� Ƚ��: " + cnt[i] + "ȸ");

		System.out.println("\n��¹��2: ���� for��)");
		// ��� ��� ���2: ���� for��(for-each�� => ArrayList, HashMap�� ��� ���� ����)
		int ind = 0; // �ε��� �ѹ��� ����ϱ� ���� ����(0���� ����) => ������ �ǵ����̸� ��ܿ� �������ִ°��� ����

		for (int element : cnt)
			System.out.println(ind++ + "��(��) ���� Ƚ��: " + element + "ȸ");

		// 5 ~ 13 ������ ���� 15���� �����ϰ� 5 ~ 13�� ���� Ƚ���� ����Ͻÿ�.
	}
}