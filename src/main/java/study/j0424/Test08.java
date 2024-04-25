package study.j0424;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet({"/T8"})
public class Test08 extends HttpServlet {
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
//		response.getWriter().append("1.Served at: ").append(request.getContextPath());
		System.out.println("이고은 Get 메소드 입니다.");
		
		PrintWriter out = response.getWriter();
		out.println("<p><a href='/javaclass/study/0424/test8.jsp'>back</a></P>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("2.Served at: ").append(request.getContextPath());
		System.out.println("이고은 Post 메소드 입니다.");
		doGet(request, response);
	}

}
