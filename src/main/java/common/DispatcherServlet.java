package common;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import member.MemberDAO;
import member.MemberDTO;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process (request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		process (request,response);
	}
	
	
	
	private void process (HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		String uri = request.getRequestURI(); 
		String path = uri.substring(uri.lastIndexOf("/"));   
		
		System.out.println(path); 
		
		
		
		if(path.equals("/login.do")) {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			MemberDTO dto = new MemberDTO();
			dto.setId(id);
			dto.setPass(password);
			
			MemberDAO dao = new MemberDAO();
			MemberDTO member = dao.login(dto);
			
			if (member != null) {
				HttpSession session = request.getSession();
				session.setAttribute("id", member.getId());
				session.setAttribute("name", member.getName());
				session.setAttribute("birth", member.getBirth());
				session.setAttribute("phone", member.getPhone());
				session.setAttribute("email", member.getEmail());
				session.setAttribute("address", member.getAddress());
				response.sendRedirect("index.jsp");
			} else {
				JSFunction.alertLocation(response, "존재하지않는 회원정보 입니다",  "login.jsp");
			}
			
			
		}else if(path.equals("/createAccount.do")){
			
			MemberDTO dto = new MemberDTO();
			MemberDAO dao = new MemberDAO();
			
			dto.setId(request.getParameter("id"));
			dto.setPass(request.getParameter("password"));
			dto.setName(request.getParameter("name"));
			dto.setBirth(request.getParameter("birth"));
			dto.setPhone(request.getParameter("phone"));
			dto.setEmail(request.getParameter("email"));
			dto.setAddress(request.getParameter("address"));
			
			dao.insertMember(dto);
			
			JSFunction.alertLocation(response, "회원가입 완료",  "login.jsp");
			
			
		
						
		}else if(path.equals("/logout.do")) {
			
			HttpSession session = request.getSession();
			
			session.invalidate();
			
			response.sendRedirect("index.jsp");
			
			
		}else if(path.equals("/findPW.do")) {
			
			MemberDTO dto = new MemberDTO();
			MemberDAO dao = new MemberDAO();
			
			dto.setId(request.getParameter("id"));
			
			String pass = dao.findPW(dto).getPass();
			
			JSFunction.alertLocation(response, "비밀번호는 " + pass + " 입니다 " ,  "login.jsp");
			
		}else if (path.equals("/update.do")) {
			HttpSession session = request.getSession();
			MemberDTO dto = new MemberDTO();
			MemberDAO dao = new MemberDAO();
			
			dto.setName(request.getParameter("name"));
			dto.setBirth(request.getParameter("birth"));
			dto.setPhone(request.getParameter("phone"));
			dto.setEmail(request.getParameter("email"));
			dto.setAddress(request.getParameter("address"));
			dto.setId((String)session.getAttribute("id"));
			
			dao.update(dto);
			
			JSFunction.alertLocation(response, "회원정보 수정완료",  "index.jsp");
			
		}

		
		
		
		
		
	}

}
