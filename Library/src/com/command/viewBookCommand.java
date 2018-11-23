package com.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.*;

public class viewBookCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
			
		int page,totalpage,startpage,endpage;
		String search = request.getParameter("search");
		String opt = request.getParameter("opt");
		String temp = request.getParameter("page");
		
		if(temp == null) page = 1;
		else page = Integer.parseInt(temp);
		
		System.out.println(search + " "+opt + " "+page);
		bookDAO dao = bookDAO.getInstance();
		
		List<bookDTO> list = dao.getbook(page*10,opt,search);
		if(list == null) return;
		////////////////////////////////////////////////
		int size = list.size()-1;
		totalpage = list.get(size).getTotalpage();
		list.remove(size);
		///////////////////////////////////////////////
		
		if(totalpage % 10 != 0) totalpage = totalpage / 10 +1;
		else totalpage = totalpage / 10;
		
		startpage = ((page-1)/10) * 10 +1;
		endpage = startpage + 9;
		if(endpage > totalpage) endpage = totalpage;
				
		request.setAttribute("list",list);
		request.setAttribute("startpage", startpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("endpage", endpage);
		
		//request.setAttribute("", arg1);
	}	
}
