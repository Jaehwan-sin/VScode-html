//	������ ����(5������ ������)	<�Ϸ�>



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
		System.out.println("[������ ����]");

		for(int i=0;i<PRO;i++) {
			int myAnswer;	//	�ڽ��� �� ��
			String select[]=new String[4];	//	������ ���ù���
			int rIndex=r.nextInt(index);	//	�ܾ� ����
			int sIndex=r.nextInt(4);	//	���ù��� �ε��� ����
			boolean rBoo[]=new boolean[index];

			if(boo[rIndex]){	//	�ߺ��� ���� ����
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

			System.out.print("�� �Է� >> ");
			myAnswer=sc.nextInt();

			if(myAnswer-1==sIndex){
				System.out.println("�����Դϴ�. 10�� ȹ��");
				total+=SCORE;
			}else
				System.out.println("Ʋ�Ƚ��ϴ�.");
		}

		System.out.println("���� : "+total+"�� ȹ��");
	}

	public int getTotal(){
		return total;
	}
}