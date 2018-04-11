package hello;

public class Input {

    private String character;
    private Integer position;

    public Input() {
    }

    public Input(String character, Integer position) {
		
		this.character = character;
		this.position = position;
	}



	public String getCharacter() {
		return character;
	}

	public void setCharacter(String character) {
		this.character = character;
	}

	public Integer getPosition() {
		return position;
	}

	public void setPosition(Integer position) {
		this.position = position;
	}
    
    
}