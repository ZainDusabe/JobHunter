
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginservelet")
public class loginservelet extends HttpServlet {
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
		
		String username=request.getParameter("username");
		String passwd=request.getParameter("passwd");
		
		
		
		
		DatabaseGGJOPConnection dbcon=new DatabaseGGJOPConnection();
//		if(username.equals("zain12") && passwd.equals("pass")) && 
		if(dbcon.CheckCredentials(username, passwd)){
			
		
			
			HttpSession session=request.getSession();
			session.setAttribute("username", username);
//			session.setAttribute("password", pass)
			response.sendRedirect("Dashboard.jsp?user="+username);
		}else {
			response.sendRedirect("Account.jsp");
		}

}}
