package com.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.member.*;

public class modifyMemberCommand implements Command{

	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String pw = request.getParameter("password");
		String id = request.getParameter("id");
		memberDAO dao = memberDAO.getInstance();
		int state = dao.updateMember(id, pw);
		
		request.setAttribute("state",state);
		
	}

}
