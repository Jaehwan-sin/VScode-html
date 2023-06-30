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
			System.out.println("1)주관식  2)객관식 3)단어장 4)영한사전 5)한영사전 6)점수출력 7)종료");
			System.out.print("메뉴 선택: ");
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
				System.out.println("프로그램을 종료합니다.");
				return;
			default:{
				System.out.println("메뉴를 잘못입력하였습니다.");
				break;
			}	
			}
		}
	}
}

