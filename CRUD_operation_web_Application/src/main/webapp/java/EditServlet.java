
import java.io.*;
import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw;
		pw=response.getWriter();
		studentJdbcValidation std;		
		std = new studentJdbcValidation();
		String firstName= request.getParameter("fName");
		firstName=firstName.toUpperCase();
		String lastName= request.getParameter("lName");
		lastName=lastName.toUpperCase();
		String id=request.getParameter("id");
		id=id.toUpperCase();
		String course= request.getParameter("course");
		course=course.toUpperCase();
		String email= request.getParameter("email");
		email=email.toLowerCase();
		std.editValidate(firstName , lastName,id,course,email);
		RequestDispatcher rd= request.getRequestDispatcher("editConfim.jsp");
		rd.forward(request, response);
		 	doGet(request, response);
}


}
