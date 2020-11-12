package wait;

import java.time.LocalTime;

public class T {
	private int id=87;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int open() {
		LocalTime end=LocalTime.now().plusSeconds(5);
		while(LocalTime.now().isBefore(end)){
		
		}
		return getId();
	}
	
	
}
