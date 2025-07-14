package sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date date = new Date();
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.write("<!doctype html>");
		out.write("<html lang='ko'>");
		out.write("<head>");
		out.write("		<title>서블릿 연습</title>");
		out.write("		<meta charset='utf-8'>");
		out.write("</head>");
		out.write("<body>");
		out.write("		<h1>서블릿 연습</h1>");
		out.write("		<p>서블릿 연습용 웹 애플리케이션입니다.</p>");
		out.write("		<p>현재 날짜와 시간 : </p>");
		out.write("</body>");
		out.write("</html>");
	}
}
