/*
 * [실습1]
 */



import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class ex01 {	
	public static void main(String[] args) {
		File file=new File("test.txt");
		Scanner scan;
		Scanner sc=new Scanner(System.in);
		String str="";
		final int SIZE=100;
		String[] str2=new String[SIZE];		//	단어
		String[] str3=new String[SIZE];		//	뜻
		int sum=0, index=0;
		boolean boo=true;

		try {
			scan = new Scanner(file);

			while(scan.hasNextLine()){	//	다음 줄의 입력 여부 판단
				str=scan.nextLine();
				String[] tmp=str.split(":");	//	단어와 뜻을 ":"로 구분

				for(int i=0; i<tmp.length; i++){
					if(boo){
						str2[index]=tmp[i];
						boo=false;
					}else{
						str3[index++]=tmp[i];
						boo=true;
					}
				}
			}

			for(int i=0; i<index; i++){	//	공백제거
				str2[i]=str2[i].trim();
				str3[i]=str3[i].trim();
			}

			while(true){
				System.out.print("1.객관식  2.주관식  3.단어장  4.점수조회  5.종료  >> ");
				int menu=sc.nextInt();

				if(menu==1){
					Gak g=new Gak(str2, str3, index);
					g.run();
					sum+=g.getTotal();
				}else if(menu==2){
					Ju j=new Ju(str2, str3, index);
					j.run();
					sum+=j.getTotal();
				}else if(menu==3){
					System.out.println("[단어목록]");

					for(int i=0; i<index; i++)
						System.out.println(str2[i]+" : "+str3[i]);
				}else if(menu==4){
					System.out.println("[총점 : "+sum+"점]");
				}else if(menu==5){
					System.out.println("총 점수 : "+sum);
					System.out.println("프로그램을 종료합니다.");
					break;
				}else{
					System.out.println("Error");
				}
			}

			scan.close();
			sc.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}