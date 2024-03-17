import java.sql.*;

public class testJdbcValidation {
	
	
   public  boolean validationHod(String Id,String password){
	   boolean status=false;
	 try {
	            ResultSet rs=null;
				Connection con=null;
				//Statement st=null;
	   
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	   con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
	   PreparedStatement ps=con.prepareStatement("select * from password where Id=?");
			   ps.setString(1,Id);
			   rs=ps.executeQuery();
			   
			   while(rs.next()) {
                String hodId=rs.getString(1);
				 hodId=hodId.toUpperCase();
				 String hodPassword=rs.getString(3);
				 hodPassword=hodPassword.toUpperCase();
				 System.out.println(hodPassword);
			 if(Id.equals(hodId)&&password.equals(hodPassword)) {
				 System.out.println("Access granted");
				 status=true;
				 System.out.println(hodPassword);
				// return status;
			 }else
	      	 System.out.println("Access denied");
	   }
	   }
	   catch(Exception e) {
		   System.out.println("Error..."+e);
	   }
	 return status;
   }
}
