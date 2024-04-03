import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;

public class studentJdbcValidation {
	
public void	validate(String firstName , String lastName , String id ,String course ,String email) {
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con;
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		PreparedStatement ps;
		ps=con.prepareStatement("insert into StudentRegistration values(?,?,?,?,?)");
		ps.setString(1, firstName);
		ps.setString(2, lastName);
		ps.setString(3, id);
		ps.setString(4, course);
		ps.setString(5, email);
		int count=ps.executeUpdate();
		if(count>0)
			System.out.println("succesfully Registered......");
		else
			System.out.println("Data is not Registered try again....");
		con.close();
		
		
	}
	catch(Exception e) {
		System.out.println("Error....."+e);
	}
}
		//----------------delete validation code--------------------
public static void deleteValidate(String id) {
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con;
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		PreparedStatement ps;
		ps=con.prepareStatement("delete from studentRegistration where id=?");
		ps.setString(1, id);
		ps.executeQuery();
}
	catch(Exception e) {
		System.out.println("Error.........."+e);
	}
}
		//---------------------Edit validation code--------------------

public void	editValidate(String firstName, String lastName,String id,String course,String email) {
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con;
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		PreparedStatement ps;
		ps=con.prepareStatement("update studentRegistration set firstName=?,lastName=?,course=?,email=? where id=?");
		ps.setString(5, id);
		ps.setString(4, email);
		ps.setString(2, lastName);
		ps.setString(3, course);
		ps.setString(1, firstName);
		int count=ps.executeUpdate();
		if(count>0) {
			System.out.println("succesfully updated......");
		
		}
		else {
			System.out.println("Data is not updated try again....");
		
		}
		con.close();
		
		
	}
	catch(Exception e) {
		System.out.println("Error....."+e);
	}
}
}




