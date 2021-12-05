
public class postedConstuctor {
	private String title,description,image,type,username;

	public postedConstuctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public postedConstuctor(String title, String description, String image, String type, String username) {
		super();
		this.title = title;
		this.description = description;
		this.image = image;
		this.type = type;
		this.username = username;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	
}	