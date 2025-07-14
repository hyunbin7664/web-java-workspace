package medel2;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HomeController implements Controller {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("HomeController가 실행됨");

		// 뷰에 전달할 데이터를 요청객체에 속성으로 담는다.
		request.setAttribute("message", "홈페이지에 오신 것을 환영합니다!");

		// 이동할 JSP 경로 반환
		return "home.jsp";

	}
}
