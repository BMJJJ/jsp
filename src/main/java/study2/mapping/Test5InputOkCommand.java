package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test5InputOkCommand implements Test5Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		// DB에 저장하러 다녀 옵니다.
		
		String message = mid+"님 회원가입이 완료되었습니다.";
		request.setAttribute("message", message);
		request.setAttribute("url", "test5.do5");
	}

}
