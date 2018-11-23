package com.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.*;

public class recordBookCommand implements Command{

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) {
      bookDAO dao = bookDAO.getInstance();
      int page,totalpage,startpage,endpage;
      String temp = request.getParameter("page");
      String member = request.getParameter("member");
      String opt = request.getParameter("opt");
      
      if(opt == null)
      {
    	  opt = "bdate DESC";
      }
      if(temp == null) page = 1;
      else page = Integer.parseInt(temp);
      
      List<bookDTO> list = dao.getRecord(page*10,opt);
      
       
      int size = list.size()-1;
      totalpage = list.get(size).getTotalpage();
      list.remove(size);
      
      
      if(totalpage % 10 != 0) totalpage = totalpage / 10 +1;
      else totalpage = totalpage / 10;
      
      startpage = ((page-1)/10) * 10 +1;
      endpage = startpage + 9;
      if(endpage > totalpage) endpage = totalpage;
      
      request.setAttribute("list", list);
      request.setAttribute("startpage", startpage);
      request.setAttribute("totalpage", totalpage);
      request.setAttribute("endpage", endpage);
      request.setAttribute("opt",opt);
   }
}