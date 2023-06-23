package Dictionary;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class questionManager {//게임실행
	private Scanner scan=new Scanner(System.in);
	private Random r=new Random();
	private int point=0;
	public void start(ArrayList<Words> w) {//주관식
		System.out.println("단어 퀴즈(주관식)");
		for(int i=0;i<w.size();i++) {
			int r1=r.nextInt(10);
			if(!w.get(r1).isUsed()) {
				w.get(r1).using();
				System.out.print(w.get(r1).getWord()+": ");
				String temp=scan.nextLine();
				if(w.get(r1).getMeaning().contains("/")) {
					String s[]=w.get(r1).getMeaning().split("/");
					for(int j=0;j<s.length;j++) {
						if(s[j].equals(temp)) {
							point++;
							System.out.println("정답입니다.");
							break;
						}else if(j==(s.length-1))
							System.out.println("오답입니다.");
					}

				}
				else if(temp.equals(w.get(r1).getMeaning())) {
					point++;
					System.out.println("정답입니다.");
				}
				else
					System.out.println("오답입니다.");
			}else
				i--;
		}
		System.out.println(point+"개의 정답");
		for(int i=0;i<10;i++)
			w.get(i).reset();
		point=0;
	}
	public void start2(ArrayList<Words> w) {//객관식
		System.out.println("단어 퀴즈(객관식)");
		for(int i=0;i<10;i++) {
			int r1=r.nextInt(10);
			if(!w.get(r1).isUsed()) {
				w.get(r1).using();
				System.out.println((i+1)+". "+w.get(r1).getWord()+"의 뜻은?" );
				String temp[]=new String[4];
				int num=r.nextInt(4);
				temp[num]=w.get(r1).getMeaning();

				for(int k=0;k<4;k++) {
					if(k!=num) {	
						temp[k]=w.get(r.nextInt(10)).getMeaning();
						if(temp[k].equals(temp[num]))
							k--;
						else {
							for(int j=0;j<k;j++) {
								if(temp[j].equals(temp[k]) && j!=num) {
									temp[j]=w.get(r.nextInt(10)).getMeaning();
									j--;
								}
							}
						}
					}else 
						continue;
				}//객관식 보기만 랜덤으로
				for(int j=0;j<4;j++) {
					System.out.print((j+1)+") "+temp[j]+" ");
				}
				System.out.println();
				System.out.print("정답 :");
				int ch=scan.nextInt();
				if(ch==(num+1)) {
					System.out.println("정답입니다.");
					point++;
				}
				else
					System.out.println("오답입니다.");
			}else
				i--;


		}
		System.out.println(point+"개의 정답");	
		for(int i=0;i<10;i++)
			w.get(r.nextInt(10)).reset();
		point=0;

	}
	public void show(ArrayList<Words> w) {
		System.out.println("단어장");
		for(int i=0;i<10;i++)
			System.out.println(w.get(i).getWord()+" : "+w.get(i).getMeaning());
	}
}
