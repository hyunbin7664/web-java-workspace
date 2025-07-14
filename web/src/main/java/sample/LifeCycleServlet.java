package sample;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 * @WebServlet은 어노테이션이다.
 * - 어노테이션은 자바 소스 코드에 부가적인 정보를 실행할 때 사용한다.
 * - @WebServlet은 서블릿과 관련된 부가적인 정보를 실행할 때 사용하는 어노테이션이다.
 * - 서블릿을 실행하기 위한 URL 패턴, 서블릿의 이름, 서블릿에 대한 간단한 설명 등의 정보를 실행할 수 있다.
 * 
 */
@WebServlet(urlPatterns = "/life")
public class LifeCycleServlet extends HttpServlet{

	@Override
	public void init() throws ServletException {
		System.out.println("init() 실행됨");
	}
	
	@Override
	public void destroy(){
		System.out.println("destroy() 실행됨");
	}
	
	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("service(req, res) 실행됨");
		System.out.println("service(req, res)에서 클라이언트 요청을 처리함.");
	}
}
