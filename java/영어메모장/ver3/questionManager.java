package Dictionary;

import java.util.*;

public class questionManager {//게임실행
	private Scanner scan=new Scanner(System.in);
	private Random r=new Random();
	private int point=0;
	private final int SCORE=10;
	private int tot=0;
	
	public questionManager(){
		
	}
	
	public void start(ArrayList<Words>a) {	//	주관식
		System.out.println("단어 퀴즈(주관식)");
		
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
							System.out.println("정답입니다.");
							System.out.println(SCORE+"점 누적");
							break;
						}else if(j==(s.length-1))
							System.out.println("오답입니다.");
					}
				}else if(temp.equals(a.get(r1).getMeaning())) {
					point++;
					System.out.println("정답입니다.");
					System.out.println(SCORE+"점 누적");
				}else
					System.out.println("오답입니다.");
			}else
				i--;
		}
		
		System.out.println(point+"개의 정답");
		System.out.println("총 점수 : "+SCORE*point);
		tot+=SCORE*point;
		
		for(int i=0;i<10;i++)
			a.get(i).reset();
		
		point=0;
	}
	
	public void start2(ArrayList<Words>a) {	//	객관식
		System.out.println("단어 퀴즈(객관식)");
		
		for(int i=0;i<a.size();i++) {
			int r1=r.nextInt(a.size());
			
			if(!a.get(r1).isUsed()) {
				a.get(r1).using();
				System.out.println((i+1)+". "+a.get(r1).getWord()+"의 뜻은?" );
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
				}//객관식 보기만 랜덤으로
				for(int j=0;j<4;j++) {
					System.out.print((j+1)+") "+temp[j]+" ");
				}
				System.out.println();
				System.out.print("정답 :");
				int ch=scan.nextInt();
				if(ch==(num+1)) {
					System.out.println("정답입니다.");
					System.out.println(SCORE+"점 누적");
					point++;
				}
				else
					System.out.println("오답입니다.");
			}else
				i--;
		}
		System.out.println(point+"개의 정답");	
		System.out.println("총 점수 : "+SCORE*point);
		tot+=SCORE*point;
		
		for(int i=0;i<a.size();i++)
			a.get(i).reset();
		
		point=0;

	}
	public void show(ArrayList<Words>a) {
		System.out.println("[단어장]");

		for(int i=0;i<a.size();i++)
			System.out.println(a.get(i).getWord()+" : "+a.get(i).getMeaning());
	}

	public void start3(ArrayList<Words>a) {
		HashMap<String, String> dic = new HashMap<String, String>();
		
		for(int i=0;i<a.size();i++)
			dic.put(a.get(i).getWord(),a.get(i).getMeaning());
		
		System.out.print("찾고 싶은 단어검색(영어):");
		String eng = scan.nextLine();
		
		String kor = dic.get(eng);
		
		if(kor == null)
			System.out.println(eng +"는 없는 단어 입니다.");
		else
			System.out.println(eng+" : "+kor);
	}

	public void start4(ArrayList<Words>a) {
		HashMap<String, String> dic = new HashMap<String, String>();
		for(int i=0;i<a.size();i++)
			dic.put(a.get(i).getWord(),a.get(i).getMeaning());
		System.out.print("찾고 싶은 단어검색(한글):");
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
		
		System.out.println(tempKor +"를 뜻으로 갖는 단어는 없습니다.");
	}
	
	public String toString(){
		return "지금까지 획득한 총 점수 : "+tot+"\n";
	}
}