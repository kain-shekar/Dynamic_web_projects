

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HomeHodServlet
 */
@WebServlet("/HomeHodServlet")
public class HomeHodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeHodServlet() {
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
		testJdbcValidation test;		
		test = new testJdbcValidation();
		
		String hodId= request.getParameter("hodId");
		hodId=hodId.toUpperCase();
		String hodPassword= request.getParameter("hodPassword");
		hodPassword=hodPassword.toUpperCase();
		test.validationHod(hodId,hodPassword);
		
		if(test.validationHod(hodId,hodPassword))
		{
			RequestDispatcher rd=request.getRequestDispatcher("confirmPasswordHod.jsp");
			rd.forward(request, response);
			
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("confirmFailedHod.jsp");
		rd.forward(request, response);
			pw.println("Invalid user Please try again.....");
		}
		
// ------------------------------faculty && Student ID---------------------------
//		String stdOrfacId= request.getParameter("stdOrFacId");
//		stdOrfacId=stdOrfacId.toUpperCase();
//		test.facultyOrStd(stdOrFacId);
		
		doGet(request, response);
	}

}
