package com.example.demo;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.UserDao;
import com.example.demo.model.User;

@Controller
public class UserRegistrationController {

	@Autowired
	private UserDao userDao;

	@RequestMapping(value = "/UserRegistration", method = RequestMethod.POST)
	public ModelAndView userRegistration(@RequestParam("Name") String username,
			@RequestParam("Email") String useremail, @RequestParam("number") String number, @RequestParam("confirmpass") String password) {

		
		ModelAndView mv = new ModelAndView();

		User user = new User();
		user.setName(username);
		user.setEmail(useremail);
		user.setNumber(number);
		user.setPassword(password);

		String name = userDao.UserLogin(user);
		if(name != null) {
			mv.addObject("msg","User already register please login");
			mv.setViewName("Register.jsp");
		}else {
			int counter = userDao.registerUser(user);
			if (counter > 0) {
				mv.addObject("msg", "User registration successful.");
			} else {
				mv.addObject("msg", "Registration Failed");
			}
			mv.setViewName("Register.jsp");
		}

		return mv;
	}
	
	@RequestMapping(value = "/Userlogin", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("number") String number, @RequestParam("password") String password,HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		
		User user = new User();
		user.setNumber(number);
		user.setPassword(password);
		
		String name = userDao.UserLogin(user);
		
		if (name != null) {

			mv.addObject("msg", "Welcome "+name+" ");
			
			session.setAttribute("session_user_name", user.getName());
			mv.setViewName("index.jsp");

		} else {

			mv.addObject("msg", "Invalid user id or password.");
			mv.setViewName("Login.jsp");
		}
		
		
		return mv;
		
	}
}
