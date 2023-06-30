package Dictionary;

import java.util.*;

public class questionManager {//���ӽ���
	private Scanner scan=new Scanner(System.in);
	private Random r=new Random();
	private int point=0;
	private final int SCORE=10;
	private int tot=0;
	
	public questionManager(){
		
	}
	
	public void start(ArrayList<Words>a) {	//	�ְ���
		System.out.println("�ܾ� ����(�ְ���)");
		
		for(int i=0;i<a.size();i++) {
			int r1=r.nextInt(a.size());
			
			if(!a.get(r1).isUsed()) {
				a.get(r1).using();
				System.out.print(a.get(r1).getWord()+": ");
				String temp=scan.nextLine();
				
				if(a.get(r1).getMeaning().contains("/")) {
					String s[]=a.get(r1).getMeaning().split("/");
					
					for(int j=0;j<s.length;j++) {
						if(s[j].equals(temp)) {
							point++;
							System.out.println("�����Դϴ�.");
							System.out.println(SCORE+"�� ����");
							break;
						}else if(j==(s.length-1))
							System.out.println("�����Դϴ�.");
					}
				}else if(temp.equals(a.get(r1).getMeaning())) {
					point++;
					System.out.println("�����Դϴ�.");
					System.out.println(SCORE+"�� ����");
				}else
					System.out.println("�����Դϴ�.");
			}else
				i--;
		}
		
		System.out.println(point+"���� ����");
		System.out.println("�� ���� : "+SCORE*point);
		tot+=SCORE*point;
		
		for(int i=0;i<10;i++)
			a.get(i).reset();
		
		point=0;
	}
	
	public void start2(ArrayList<Words>a) {	//	������
		System.out.println("�ܾ� ����(������)");
		
		for(int i=0;i<a.size();i++) {
			int r1=r.nextInt(a.size());
			
			if(!a.get(r1).isUsed()) {
				a.get(r1).using();
				System.out.println((i+1)+". "+a.get(r1).getWord()+"�� ����?" );
				String temp[]=new String[4];
				int num=r.nextInt(4);
				temp[num]=a.get(r1).getMeaning();

				for(int k=0;k<4;k++) {
					if(k!=num) {
						temp[k]=a.get(r.nextInt(a.size())).getMeaning();
						if(temp[k].equals(temp[num]))
							k--;
						else {
							for(int j=0;j<k;j++) {
								if(temp[j].equals(temp[k]) && j!=num) {
									temp[j]=a.get(r.nextInt(a.size())).getMeaning();
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
					System.out.println(SCORE+"�� ����");
					point++;
				}
				else
					System.out.println("�����Դϴ�.");
			}else
				i--;
		}
		System.out.println(point+"���� ����");	
		System.out.println("�� ���� : "+SCORE*point);
		tot+=SCORE*point;
		
		for(int i=0;i<a.size();i++)
			a.get(i).reset();
		
		point=0;

	}
	public void show(ArrayList<Words>a) {
		System.out.println("[�ܾ���]");

		for(int i=0;i<a.size();i++)
			System.out.println(a.get(i).getWord()+" : "+a.get(i).getMeaning());
	}

	public void start3(ArrayList<Words>a) {
		HashMap<String, String> dic = new HashMap<String, String>();
		
		for(int i=0;i<a.size();i++)
			dic.put(a.get(i).getWord(),a.get(i).getMeaning());
		
		System.out.print("ã�� ���� �ܾ�˻�(����):");
		String eng = scan.nextLine();
		
		String kor = dic.get(eng);
		
		if(kor == null)
			System.out.println(eng +"�� ���� �ܾ� �Դϴ�.");
		else
			System.out.println(eng+" : "+kor);
	}

	public void start4(ArrayList<Words>a) {
		HashMap<String, String> dic = new HashMap<String, String>();
		for(int i=0;i<a.size();i++)
			dic.put(a.get(i).getWord(),a.get(i).getMeaning());
		System.out.print("ã�� ���� �ܾ�˻�(�ѱ�):");
		String tempKor=scan.nextLine();
		for(int i=0;i<a.size();i++) {
			String[] kor=a.get(i).getMeaning().split("/");
			for(int j=0;j<kor.length;j++) {
				if(kor[j].equals(tempKor)) {
					String eng=a.get(i).getWord();
					String kor2=dic.get(eng);
					System.out.println(eng+" : "+kor2);
					return ;

				}
			}
		}
		
		System.out.println(tempKor +"�� ������ ���� �ܾ�� �����ϴ�.");
	}
	
	public String toString(){
		return "���ݱ��� ȹ���� �� ���� : "+tot+"\n";
	}
}