package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.DispatcherServlet;
import global.Seperator;
import sun.print.resources.serviceui_pt_BR;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("=====member 컨트롤러 진입========");
        Seperator.init(request, response);
      	MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
      	switch (Seperator.command.getAction()) {
		case "login":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			String name =service.login(member);
			if (name.equals("")) {
				Seperator.command.setPage("login");
				Seperator.command.setView();
			} else {
			 Seperator.command.setDirectory(request.getParameter("directory"));
				request.setAttribute("name", name);
			}
			
			
		break;
		case "regist":
			member.setName(request.getParameter("name"));
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setSsn(request.getParameter("ssn"));
			member.setEmail(request.getParameter("email"));
			member.setRegDate();
			String msg = service.regist(member);
			if (msg.equals("중복id입니다")||msg.equals("회원가입실패")) {
				Seperator.command.setPage("regist");
				Seperator.command.setView();
			} else {
				Seperator.command.setPage("login");
				Seperator.command.setView();
			}
				
		break;
		case "update":break;
		
		case "delete":break;
		case "detail":
			member = service.show();
			request.setAttribute("member", member);
			break;
		case "list":break;//나중
		case "logout":break;
		case "count":break;
		case "find_by":break;//나중
		default:
			break;
		}
		DispatcherServlet.send(request, response, Seperator.command);
	}

	
}