package Dictionary;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class questionManager {//���ӽ���
	private Scanner scan=new Scanner(System.in);
	private Random r=new Random();
	private int point=0;
	public void start(ArrayList<Words> w) {//�ְ���
		System.out.println("�ܾ� ����(�ְ���)");
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
							System.out.println("�����Դϴ�.");
							break;
						}else if(j==(s.length-1))
							System.out.println("�����Դϴ�.");
					}

				}
				else if(temp.equals(w.get(r1).getMeaning())) {
					point++;
					System.out.println("�����Դϴ�.");
				}
				else
					System.out.println("�����Դϴ�.");
			}else
				i--;
		}
		System.out.println(point+"���� ����");
		for(int i=0;i<10;i++)
			w.get(i).reset();
		point=0;
	}
	public void start2(ArrayList<Words> w) {//������
		System.out.println("�ܾ� ����(������)");
		for(int i=0;i<10;i++) {
			int r1=r.nextInt(10);
			if(!w.get(r1).isUsed()) {
				w.get(r1).using();
				System.out.println((i+1)+". "+w.get(r1).getWord()+"�� ����?" );
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
				}//������ ���⸸ ��������
				for(int j=0;j<4;j++) {
					System.out.print((j+1)+") "+temp[j]+" ");
				}
				System.out.println();
				System.out.print("���� :");
				int ch=scan.nextInt();
				if(ch==(num+1)) {
					System.out.println("�����Դϴ�.");
					point++;
				}
				else
					System.out.println("�����Դϴ�.");
			}else
				i--;


		}
		System.out.println(point+"���� ����");	
		for(int i=0;i<10;i++)
			w.get(r.nextInt(10)).reset();
		point=0;

	}
	public void show(ArrayList<Words> w) {
		System.out.println("�ܾ���");
		for(int i=0;i<10;i++)
			System.out.println(w.get(i).getWord()+" : "+w.get(i).getMeaning());
	}
}
