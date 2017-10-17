package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/new")
public class DataServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");		
		PrintWriter out = response.getWriter();
		
		if(request.getParameter("imie").length() == 0)
		{
			out.println("<html><body><h2>B��D</h2>" +
					"<p>Imie nie moze by� puste <br />" +
					"<a href='http://'>Poswr�t</a>"+
					
					"</body></html>");
		}
		else if(request.getParameter("nazwisko").length() == 0)
		{
			out.println("<html><body><h2>B��D</h2>" +
					"<p>Nazwisko nie moze byc puste <br />" +

					"</body></html>");
		}
		
		else if(request.getParameter("data_ur").matches("\\d{4}-\\d{2}-\\d{2}")==false)
		{
			out.println("<html><body><h2>B��D</h2>" +
					"<p>Z�y format daty<br />" +

					"</body></html>");
		}
		
		out.close();
		
		/*String selectedHobby = "";
		for (String hobby : request.getParameterValues("hobby")) {
			selectedHobby += hobby + " ";
		}
		out.println("<html><body><h2>Your data</h2>" +
				"<p>First name: " + request.getParameter("firstName") + "<br />" +
				"<p>Your hobby: " + selectedHobby + "<br />" +
				"</body></html>");
		
		out.close();*/ 
		
		
		
	}

}
