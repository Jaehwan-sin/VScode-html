//	�ְ��� ����<�Ϸ�>



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
		System.out.println("[�ְ��� ����]");

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

			String[] tmp=str2[rIndex].split("/");	//	�ܾ� ���� �� ��츦 "/"���� ����

			for(int j=0; j<tmp.length; j++){
				if( myAnswer.equals(tmp[j])  ) {
					total+=SCORE;
					System.out.println("�����Դϴ�. 10�� ȹ��");
					break;
				}

				if(j==tmp.length-1)
					System.out.println("Ʋ�Ƚ��ϴ�.");
			}
		}

		System.out.println("���� : "+total+"�� ȹ��");
	}

	public int getTotal(){
		return total;
	}
}