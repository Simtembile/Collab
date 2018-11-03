package hello;

public class Input {

    private String character;
    private String position;

    public Input() {
    }

    public Input(String character, String position) {
		
		this.character = character;
		this.position = position;
	}



	public String getCharacter() {
		return character;
	}

	public void setCharacter(String character) {
		this.character = character;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}
	
	

    
}