//	객관식 문제(5문제만 출제함)	<완료>



import java.util.Random;
import java.util.Scanner;

public class Gak {
	private final int SCORE=10;
	private String str1[];
	private String str2[];
	private int index;
	private int total;
	private final int PRO=5;
	private boolean boo[];
	Scanner sc=new Scanner(System.in);
	Random r=new Random();

	public Gak(){
		total=0;
	}

	public Gak(String[] str1, String[] str2, int index){
		this.str1=str1;
		this.str2=str2;
		this.index=index;
		boo=new boolean[index];
		total=0;
	}

	public void run(){
		System.out.println("[객관식 문제]");

		for(int i=0;i<PRO;i++) {
			int myAnswer;	//	자신이 고른 답
			String select[]=new String[4];	//	객관식 선택문항
			int rIndex=r.nextInt(index);	//	단어 랜덤
			int sIndex=r.nextInt(4);	//	선택문항 인덱스 랜덤
			boolean rBoo[]=new boolean[index];

			if(boo[rIndex]){	//	중복된 문제 제거
				i--;
				continue;
			}

			boo[rIndex]=true;
			select[sIndex]=str2[rIndex];
			rBoo[sIndex]=true;

			for(int j=0; j<select.length; j++){
				int rand2=r.nextInt(index);

				if(j==sIndex)
					continue;
				else{
					if(rIndex!=rand2 && rBoo[rand2]==false){
						select[j]=str2[rand2];
						rBoo[rand2]=true;
					}else{
						j--;
						continue;
					}
				}
			}	

			System.out.println("Q"+(i+1)+". "+str1[rIndex]);

			for(int j=0; j<4; j++)
				System.out.println((j+1)+". "+select[j]);

			System.out.print("답 입력 >> ");
			myAnswer=sc.nextInt();

			if(myAnswer-1==sIndex){
				System.out.println("정답입니다. 10점 획득");
				total+=SCORE;
			}else
				System.out.println("틀렸습니다.");
		}

		System.out.println("점수 : "+total+"점 획득");
	}

	public int getTotal(){
		return total;
	}
}