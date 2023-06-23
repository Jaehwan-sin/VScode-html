//	[실습1] ArrayList를 활용한 단어장 만들기

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
		//Words[] words=new Words[10];
		ArrayList<Words> words=new ArrayList<Words>();

		questionManager q=new questionManager();
		scan=new Scanner(file);

		while(scan.hasNextLine()) {
			String str=scan.nextLine();
			words.add(new Words(str));
		}

		scan.close();


		while(true) {
			Scanner sc=new Scanner(System.in);
			System.out.println("1)주관식  2)객관식 3)단어장 4)종료하기");
			System.out.print("메뉴 선택: ");
			int menu=sc.nextInt();
			switch(menu) {
			case 1:{
				q.start(words);
				break;
			}
			case 2:{
				q.start2(words);
				break;
			}
			case 3:{
				q.show(words);
				break;
			}
			case 4:{
				return;
			}
			default:{
				System.out.println("메뉴를 잘못입력");
				break;
			}	
			}
		}
	}
}

