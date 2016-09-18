package com.aitest.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;








import com.aitest.web.entity.PermissionEntity;
import com.aitest.web.entity.UserEntity;
import com.aitest.web.service.LoginService;

@Controller
@SessionAttributes("username") 
public class LoginController {
	@Autowired  
    LoginService loginService;
	
	
	@ResponseBody  
    @RequestMapping(value="/login" , method = RequestMethod.POST)
	public String login(HttpServletRequest request,HttpServletResponse response,Model model){ 
		String username = request.getParameter("username");  
        String password = request.getParameter("password");  
        System.out.println("userName is:"+username);  
        System.out.println("password is:"+password); 
        UserEntity user = loginService.getUser(username, password);
        if(user!=null){
        	model.addAttribute("username", username);
        	List<PermissionEntity> userPermissionlist=loginService.getPermission(user.getUserID());
        	model.addAttribute("userPermissionlist", userPermissionlist);
        	return "welcome.jsp";
        }else{
        	return "index.jsp";  
        }
    }  

	
}
