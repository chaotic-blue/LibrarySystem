package com.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.book.*;

public class deleteBookCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("bid");
		bookDAO dao = bookDAO.getInstance();
		int state = dao.deleteBook(id);
		request.setAttribute("state", state);
	}
	
	
}
