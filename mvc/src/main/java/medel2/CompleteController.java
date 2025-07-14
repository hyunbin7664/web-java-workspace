package medel2;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CompleteController implements Controller{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("CompleteController 실행됨");
		
		return "complete.jsp";
	}

}
