

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updateservelet
 */
@WebServlet("/Updateservelet")
public class Updateservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updateservelet() {
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
		//int  posted_id=Integer.parseInt(request.getParameter("posted_id")) ;
		String title=request.getParameter("title");
		String description=request.getParameter("description");
		String image=request.getParameter("image");
		String type=request.getParameter("type");
		String username=request.getParameter("username");
		
		postedConstuctor postedd = new  postedConstuctor(title,description,image,type,username);
		
		DatabaseGGJOPConnection dbcon=new DatabaseGGJOPConnection();
		String results="";
		try {
		results = dbcon.Updatepost(postedd);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		response.getWriter().print(results);
		}

	}











