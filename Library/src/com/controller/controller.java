package com.controller;

import com.command.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class controller
 */
@WebServlet("*.do")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		actionDo(request,response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String viewPage = null;
		Command command = null;
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		if(com.equals("/join.do")) {
			command = new insertMemberCommand();
			command.execute(request, response);
			viewPage = "check_join.jsp";
		}else if(com.equals("/insertbook.do")) {
			command = new insertBookCommand();
			command.execute(request, response);
			viewPage = "check_insertbook.jsp";
		}else if(com.equals("/returnbook.do")) {
			command = new returnBookCommand();
			command.execute(request, response);
			viewPage = "check_return.jsp";
		}else if(com.equals("/login.do")) {
			command = new loginMemberCommand();
			command.execute(request, response);
			viewPage = "check_login.jsp";
		}else if(com.equals("/rentalbook.do")) {
			command = new rentalBookCommand();
			command.execute(request, response);
			viewPage = "check_rental.jsp";
		}else if(com.equals("/modifymember.do")) {
			command = new modifyMemberCommand();
			command.execute(request, response);
			viewPage = "check_modify.jsp";
		}else if(com.equals("/searchbook.do")) {
			command = new viewBookCommand();
			command.execute(request, response);
			viewPage = "viewsearch.jsp";
		}else if(com.equals("/recordbook.do")) {
			command = new recordBookCommand();
			command.execute(request, response);
			viewPage ="viewrecord.jsp";
		}else if(com.equals("/deletebook.do")) {
			command = new deleteBookCommand();
			command.execute(request, response);
			viewPage = "check_delete.jsp";
		}
		
		RequestDispatcher dispatcher =request.getRequestDispatcher(viewPage);
		dispatcher.forward(request,response);
	}

}
