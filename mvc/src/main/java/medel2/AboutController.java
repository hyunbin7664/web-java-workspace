package medel2;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AboutController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("message", "이 페이지는 애플리케이션 소개입니다.");

		// 이동할 뷰 경로 반환
		return "about.jsp";
	}

}
