package Dictionary;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class quiz {
	public static void main(String args[]) throws FileNotFoundException {
		File file =new File("test.txt");
		Scanner scan;
		int count=0;
		ArrayList <Words>a=new ArrayList<Words>(10);
		questionManager q=new questionManager();
		scan=new Scanner(file);

		while(scan.hasNextLine()) {
			String str=scan.nextLine();
			a.add(new Words(str));
			count++;
		}

		scan.close();


		while(true) {
			Scanner sc=new Scanner(System.in);
			System.out.println("1)�ְ���  2)������ 3)�ܾ��� 4)���ѻ��� 5)�ѿ����� 6)������� 7)����");
			System.out.print("�޴� ����: ");
			int menu=sc.nextInt();
			switch(menu) {
			case 1:
				q.start(a);
				break;
			case 2:
				q.start2(a);
				break;
			case 3:
				q.show(a);
				break;
			case 4:
				q.start3(a);
				break;
			case 5:
				q.start4(a);
				break;
			case 6:
				System.out.println(q);
				break;
			case 7:
				System.out.println("���α׷��� �����մϴ�.");
				return;
			default:{
				System.out.println("�޴��� �߸��Է��Ͽ����ϴ�.");
				break;
			}	
			}
		}
	}
}

