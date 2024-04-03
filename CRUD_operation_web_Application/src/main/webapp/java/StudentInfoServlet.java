

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentInfoServlet
 */
@WebServlet("/StudentInfoServlet")
public class StudentInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentInfoServlet() {
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
		String id= request.getParameter("id");
		id=id.toUpperCase();
		String course= request.getParameter("course");
		course=course.toUpperCase();
		String email= request.getParameter("email");
		email=email.toLowerCase();
		
	std.validate(firstName ,  lastName , id ,course ,email);
	//RequestDispatcher rd= request.getRequestDispatcher("studentInfo.jsp");
	//rd.forward(request, response);
		
		doGet(request, response);
	}

}
