package Dictionary;

public class Words {
	String word,meaning;
	boolean used=false;
	public Words(String str) {
		String[]temp=str.split(":");
		this.word=temp[0].trim();
		this.meaning=temp[1].trim();
		
	}
	public String getWord() {
		return word;
	}

	public String getMeaning() {
		return meaning;
	}
	public void using() {
		used=!used;
	}
	public boolean isUsed() {
		return used;
	}
	public void reset() {
		used=false;
	}
}
