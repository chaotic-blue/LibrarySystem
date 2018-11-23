package com.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.book.*;

public class rentalBookCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bid = request.getParameter("bid");
		String member = request.getParameter("member");
		bookDAO dao = bookDAO.getInstance();
		int state = dao.rentalBook(bid,member);
		
		request.setAttribute("state",state);
	}

}
