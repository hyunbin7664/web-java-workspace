package medel2;

import java.io.IOException;
import java.util.Map;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "*.do")
public class FrontController extends HttpServlet {

	Map<String, Controller> map = Map.of(
			"/mvc/home.do", new HomeController(), 
			"/mvc/about.do", new AboutController(), 
			"/mvc/form.do", new FormController(), 
			"/mvc/register.do", new RegisterController(), 
			"/mvc/complete.do", new CompleteController()
			);

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			System.out.println("## FrontController 실행됨");

			// 요청 URI를 알아낸다.
			String requestURI = request.getRequestURI();
			System.out.println("요청 URI" + requestURI);

			// 요청 URI에 맞는 컨트롤러를 가져온다.
			Controller controller = map.get(requestURI);
			//
			String path = controller.execute(request, response);
			System.out.println("이동할 경로: " + path);
			
			if (path.startsWith("redirect:")) {
				// 재요청 응답
				path = path.replace("redirect:", "");
				response.sendRedirect(path);
			} else {
				// 지정된 경로로 이동한다.
				path = "/WEB-INF/views/" + path;
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
			}

			System.out.println("## FrontController 종료됨");
			System.out.println();
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}

/*
 * URL과 URI
 * - URL(Uniform Resource Locator)
 *    - 웹에서 자원(리소스: 이미지, 웹 페이지 등)의 위치를 나타낸다.
 *    - 자원을 찾을 수 있는 정확한 위치를 나타낸다.
 *    - 구조
 *       프로토콜 + 도메인 + 리소스경로 + 쿼리스트링 + 앵커
 * 
 *       https://www.bookstore.com/book/detail.jsp?no=100#review-box
 *       
 *       프로토콜: https
 *       도메인: www.bookstore.com
 *       리소스경로: /book/detail.jsp
 *       쿼리스트링: no=100
 *       앵커: #review-box
 *       
 * - URI(Uniform Resource Identifier)
 *    - 웹에서 자원을 식별하는 표준형식이다. URL을 포함한다.
 *    - 자원을 식별할 수 있지만, 반드시 위치가 정확할 필요는 없다.
 *    - 구조
 *       스키마 + SPP(Scheme-Specific Part)
 * 
 *       https://www.yes24.com/books/102313
 *       
 *       스키마 : https
 *       SPP : 기관 - www.yes24.com
 *                        경로 - /books
  *                       데이터아이디 - /102313 
 */
