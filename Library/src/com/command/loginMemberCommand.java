package com.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.member.*;

/**
 * 로그?�� ?��?��?�� 처리?��?�� Action ?��?��?��
 */
public class loginMemberCommand implements Command
{
 		@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	
        HttpSession session=request.getSession();
        
        // ?��?��?��?? 비�?번호�? �??��?��?��.
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        
        // DB?��?�� ?��?��?��, 비�?번호 ?��?��
        memberDAO dao = memberDAO.getInstance();
        int check = dao.checkMember(id, password);
        
        if(check == memberDAO.MEMBER_NONEXISTENT) request.setAttribute("state", 0);                            
        
        else if(check == memberDAO.MEMBER_LOGIN_IS_NOT) request.setAttribute("state", -1);
        
        else
        {
        	//session.setAttribute("sessionID", id);
        	request.setAttribute("state", 1);
        	request.setAttribute("id",id);
        }      
        
        System.out.println(check);
 	}
	
      
}
 


