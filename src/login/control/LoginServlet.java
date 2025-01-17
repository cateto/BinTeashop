package login.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.model.LoginService;
import login.model.LoginSet;
import domain.Member;

@WebServlet("/login/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String m = "";
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		m = request.getParameter("m");
		if(m != null) {
			m = m.trim();
			switch(m) {
				case "form": form(request, response); break;
				case "check": check(request, response); break;
				case "out": out(request, response); break;
				default: response.sendRedirect("../index.jsp");
			}
		}else {
			response.sendRedirect("../index.jsp");
		}
	}
	private void form(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = "login.jsp";
		response.sendRedirect(view);
	}
	private void check(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
	    String pwd = request.getParameter("pwd");
	    if(id != null) id = id.trim();
	    if(pwd != null) pwd = pwd.trim();
	    
	    LoginService service = LoginService.getInstance();
	    int rCode = service.checkMember(id, pwd);
	    request.setAttribute("rCode", rCode);
	    
	    if(rCode == LoginSet.PASS) {
	    	
	    	Member m = service.getMemberS(id);
	    	session.setAttribute("loginUser", m);
	    }
	    if(id.equals(domain.Admin.getAdmin())){
	    	session.setAttribute("Admin", domain.Admin.getAdmin());
	    }
	    String view = "login_msg.jsp";
	    RequestDispatcher rd = request.getRequestDispatcher(view);
	    rd.forward(request, response);
	}
	private void out(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//session.removeAttribute("loginUser");
		session.invalidate();
		
		String view = "../index.do";
		response.sendRedirect(view);
	}
}
