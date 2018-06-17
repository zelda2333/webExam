package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.EmployeeBean;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/employee.do")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String eno = request.getParameter("eno");
	      String ename = request.getParameter("ename");
	      String ecompany = request.getParameter("ecompany");
	      EmployeeBean employee = new EmployeeBean();
	      employee.setEno(eno);
	      employee.setEname(ename);
	      employee.setEcompany(ecompany);
	      
	      request.setAttribute("employee", employee);
	      RequestDispatcher view =
	           request.getRequestDispatcher("/disEmployee.jsp");
	      view.forward(request, response);
	}

}
