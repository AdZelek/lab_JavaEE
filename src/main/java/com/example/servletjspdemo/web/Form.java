package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form1")
public class Form extends HttpServlet{
	
private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body><h2>Simple form servlet</h2>" +
				"<form action='new' >" +
				"Imie: <input type='text' name='imie' /> <br />" +
				"Nazwisko: <input type='text' name='nazwisko' /> <br />" +
				"Data urodzenia: <input type='text' name='data_ur' /> <br />" +
				"Plec:  <br />" +
				"<input type='radio' name='plec' value='kobieta' checked> kobieta<br>" +
				"<input type='radio' name='plec' value='mezczyzna' checked> mezczyzna<br>" +
				"<input type='radio' name='plec' value='inne'> inne <br />" + 
				"Zainteresowania: <br/>" +
				"<input type='checkbox' name='hobby' value='literatura'>literatura<br />"+
				"<input type='checkbox' name='hobby' value='tv'>tv<br />" +
				"<input type='checkbox' name='hobby' value='sport'>sport<br />" +
				"Panstwo: <br />"+
				"<select>"+
				  "<option value='pl'>Polska</option> <br/>"+
				  "<option value='en'>Wielka Brytania</option></select> <br/>"+
				"Jezyki: <br />"+
					"<select name='jezyki' multiple>"+
					  "<option value='lpl'>polski</option> <br/>"+
					  "<option value='len'>angielski</option><br/>"+
					  "<option value='lfr'>francuski</option><br/></select> <br/>"+
					  "Uwagi: <br />"+
					  "<textarea cols='40' rows='5' name='uwagi'>"+
					  "</textarea><br/>"+
				"<input type='submit' value=' OK ' />" +
				"</form>" +
				"</body></html>");
		out.close();
	}


}
