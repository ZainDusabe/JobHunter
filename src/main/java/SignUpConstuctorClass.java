
public class SignUpConstuctorClass {
		private String lname;
		private String fname;
		private int age;
		private String gender;
		private String email;
		private String mnumber;
		private String imgUpload;
		private String username;
		private String passwd;
		public SignUpConstuctorClass() {
			super();
			// TODO Auto-generated constructor stub
		}
		public SignUpConstuctorClass(String lname, String fname, int age, String gender, String email, String mnumber,
				String imgUpload, String username, String passwd) {
			super();
			this.lname = lname;
			this.fname = fname;
			this.age = age;
			this.gender = gender;
			this.email = email;
			this.mnumber = mnumber;
			this.imgUpload = imgUpload;
			this.username = username;
			this.passwd = passwd;
		}
		public String getLname() {
			return lname;
		}
		public void setLname(String lname) {
			this.lname = lname;
		}
		public String getFname() {
			return fname;
		}
		public void setFname(String fname) {
			this.fname = fname;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMnumber() {
			return mnumber;
		}
		public void setMnumber(String mnumber) {
			this.mnumber = mnumber;
		}
		public String getImgUpload() {
			return imgUpload;
		}
		public void setImgUpload(String imgUpload) {
			this.imgUpload = imgUpload;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPasswd() {
			return passwd;
		}
		public void setPasswd(String passwd) {
			this.passwd = passwd;
		}
		
}