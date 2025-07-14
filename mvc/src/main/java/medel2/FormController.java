package medel2;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("FormController 실행됨.");
		
		return "form.jsp";
	}
}
