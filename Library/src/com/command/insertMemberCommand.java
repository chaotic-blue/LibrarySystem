package com.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.member.*;

public class insertMemberCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		memberDTO dto = new memberDTO();
		memberDAO dao = memberDAO.getInstance();
		int insert_state=0, id_state=0;
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("password");
		String sex = request.getParameter("sex");
		
		dto.setId(id);
		dto.setName(name);
		dto.setPassword(pw);
		dto.setSex(sex);
		
		if(dao.confirmId(dto.getId())== memberDAO.MEMBER_EXISTENT ) id_state= memberDAO.MEMBER_EXISTENT;
		else {
			insert_state = dao.insertMember(dto);
			if(insert_state != memberDAO.MEMBER_JOIN_SUCCESS)
				insert_state = memberDAO.MEMBER_JOIN_FAIL;
		}
		
		System.out.println(id_state + " " + insert_state);
		//System.out.println(id+" "+name+" "+pw+" "+sex);
		request.setAttribute("id_state", id_state);
		request.setAttribute("insert_state",insert_state);
		request.setAttribute("id",id);
	}

}
