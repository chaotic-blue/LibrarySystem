package com.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.book.*;

public class insertBookCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bname = request.getParameter("bname");
		String writer = request.getParameter("writer");
		String publisher = request.getParameter("publisher");
		String location = request.getParameter("location");
		String amount = request.getParameter("amount");
		String comments = request.getParameter("comments");
		
		System.out.println(bname + " " + writer);
		bookDAO dao = bookDAO.getInstance();
		bookDTO dto = new bookDTO();
		dto.setBname(bname);
		dto.setWriter(writer);
		dto.setPublisher(publisher);
		dto.setLocation(location);
		dto.setAmount(amount);
		dto.setComments(comments);
		
		int state = dao.insertBook(dto);
		request.setAttribute("state",state);
	}

}
