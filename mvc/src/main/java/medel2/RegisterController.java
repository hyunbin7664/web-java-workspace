package medel2;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("RegisterController 실행됨.");
		
		String id = request.getParameter("id");
		String password = request.getParameter("pwd");
		String name = request.getParameter("name");
		
		System.out.println("신규 회원 가입 정보");
		System.out.println("아이디: " + id);
		System.out.println("비밀번호: " + password);
		System.out.println("이름: " + name);
	
		
		return "redirect:complete.do";
	}
}
