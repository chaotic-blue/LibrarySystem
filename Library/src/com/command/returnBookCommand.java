package com.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.bookDAO;
import com.member.*;

public class returnBookCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bid = request.getParameter("bid");
		String member =request.getParameter("member");
		bookDAO dao = bookDAO.getInstance();
		int state = dao.returnBook(bid,member);
		
		request.setAttribute("state",state);
	}	
}
