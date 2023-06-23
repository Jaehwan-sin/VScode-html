//	주관식 문제<완료>



import java.util.Random;
import java.util.Scanner;

public class Ju {
	private final int SCORE=10;
	private String str1[];
	private String str2[];
	private int index;
	private int total;
	private boolean boo[];
	Scanner sc=new Scanner(System.in);
	Random r=new Random();

	public Ju(){
		total=0;
	}

	public Ju(String[] str1, String[] str2, int index){
		this.str1=str1;
		this.str2=str2;
		this.index=index;
		boo=new boolean[index];
		total=0;
	}

	public void run(){
		System.out.println("[주관식 문제]");

		for(int i=0;i<index;i++) {
			String myAnswer; 
			int rIndex=r.nextInt(index);

			if(boo[rIndex]){
				i--;
				continue;
			}

			System.out.print("Q"+(i+1)+".\t"+str1[rIndex]+" => ");
			myAnswer=sc.nextLine();
			boo[rIndex]=true;

			String[] tmp=str2[rIndex].split("/");	//	단어 뜻의 각 경우를 "/"으로 구분

			for(int j=0; j<tmp.length; j++){
				if( myAnswer.equals(tmp[j])  ) {
					total+=SCORE;
					System.out.println("정답입니다. 10점 획득");
					break;
				}

				if(j==tmp.length-1)
					System.out.println("틀렸습니다.");
			}
		}

		System.out.println("점수 : "+total+"점 획득");
	}

	public int getTotal(){
		return total;
	}
}