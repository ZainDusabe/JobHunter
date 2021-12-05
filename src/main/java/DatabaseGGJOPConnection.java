import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class DatabaseGGJOPConnection {

	private String dbUrl ="jdbc:mysql://localhost:3306/jobopportunity";
	private String dbUser ="root";
	private String dbPwd ="";
	private String dbDriver = "com.mysql.jdbc.Driver";
	
	
	
public void loaddriver(String dbDriver) {
		
		try {
			
			getClass().forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}

public Connection getConnection() { 
	Connection con = null;

try {
	con = DriverManager.getConnection(dbUrl, dbUser, dbPwd);
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
	return con;
} 



public String insert(SignUpConstuctorClass clientsRegistrationInserter) {
	
	loaddriver(dbDriver);
	Connection con = getConnection();
	
	String query = "INSERT INTO signuptable VALUES(?,?,?,?,?,?,?,?,?)";
	
	String message ="Registration successfully";
	
	try {
		PreparedStatement ps = con.prepareStatement(query);
		//ps.setString(1, null);
		ps.setString(1, null);
		ps.setString(2, clientsRegistrationInserter.getLname());
		ps.setString(3, clientsRegistrationInserter.getFname());
		ps.setInt(4, clientsRegistrationInserter.getAge());
		ps.setString(5, clientsRegistrationInserter.getGender());
		ps.setString(6, clientsRegistrationInserter.getEmail());
		ps.setString(7, clientsRegistrationInserter.getMnumber());
		ps.setString(8, clientsRegistrationInserter.getImgUpload());
		ps.setString(9, clientsRegistrationInserter.getUsername());
		ps.setString(10, clientsRegistrationInserter.getPasswd());
		ps.executeUpdate();
	} catch (SQLException e) {
//		wondow.alert()
		message ="Your Registration is Unsuccessfull Try again";
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return message;
}


public boolean CheckCredentials(String username,String passwd)
				{
				loaddriver(dbDriver);
				Connection con=getConnection();
				String query="SELECT * FROM signuptable WHERE username= ? AND passwd= ?";
				
				PreparedStatement ps=null;
				try
				{
				ps=con.prepareStatement(query);
				ps.setString(1, username);
				ps.setString(2, passwd);	
				
				ResultSet rs=ps.executeQuery();
				
				if(rs.next())
				{
				return true;
				}
				
				}
				catch(SQLException e)
				{
				e.printStackTrace();
				}
				return false;
				}



public String Updatepost(postedConstuctor userUpdate) throws SQLException

{


	loaddriver(dbDriver);

Connection con=DriverManager.getConnection(dbUrl,dbUser,dbPwd);
String query= "Update posted set title=?,description=?,image=?,type=?,username=? where  posted_id="+"";

String message="Update successfully";
try {
PreparedStatement ps=con.prepareStatement(query);
//ps.setString(1, id);
ps.setString(2, userUpdate.getTitle());
ps.setString(3, userUpdate.getDescription());
ps.setString(4, userUpdate.getImage());
ps.setString(5, userUpdate.getType());
ps.setString(6, userUpdate.getUsername());
ps.executeUpdate();
} catch (SQLException e) {
message="Update not successfull"+e;
e.printStackTrace();
}
return message;
}


}






