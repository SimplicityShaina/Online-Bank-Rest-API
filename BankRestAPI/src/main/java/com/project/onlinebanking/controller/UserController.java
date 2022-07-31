package com.project.onlinebanking.controller;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.client.RestTemplate;

import com.project.onlinebanking.domain.User;
import com.project.onlinebanking.service.UserService;
import com.project.onlinebanking.validation.UserValidator;



@Controller
public class UserController {


	@Autowired
	UserService userService;
	
	@Autowired
	UserValidator userValidator;
	
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	@GetMapping("/registers")
	public String registerform(User user,Model model)
	{
		return "register";
	}

	@GetMapping("/register")
	public String saveregister(@ModelAttribute("user") User user,BindingResult result)
	{
		userValidator.validate(user,result);
		
		if(result.hasErrors()){
			System.out.println("#####");
			return "register";
		}else
		{
			userService.save(user);
			return "redirect:/login";
		}
	}
	
	@GetMapping("/login")
	public String loginPage(@ModelAttribute User user, String error,String logout,HttpServletRequest request,HttpServletResponse response,Model model){
		model.addAttribute("user", user);
		if(error!=null){
			model.addAttribute("error", "password and login not avaliable");
		} 
		if(logout!=null){
			Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
			if(authentication!=null){
				new SecurityContextLogoutHandler().logout(request, response, authentication);
			}
		}  
		if (user.getUsername() !=null && user.getPassword() !=null) {
			System.out.println("########User #########"+user);
			User userDB = userService.findByUsername(user.getUsername());
			if (userDB != null) {
		        String encodedPassword = userDB.getPassword();
		        
		        if(bCryptPasswordEncoder.matches(user.getPassword(), encodedPassword)) {
		        	 return "welcome";
		        	 
		        }
		        else {
		        	model.addAttribute("error", "username or password is incorrect");
		        }
		    }
			
		}
		return "login";
	}
	
	@GetMapping(value="/findAllUser",produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<User>> findAllUser(){
		List<User> userList=userService.findAllUser();
		return new ResponseEntity<List<User>>(userList,HttpStatus.OK);
		}
	
	
	@GetMapping("/welcome")
	public String MyAccountPage(User user,Model model)
	{
		return "welcome";
	}

	
	@GetMapping("/login?error")
	public String logout(){
		return  "redirect:/login";
	}
	
	@GetMapping("/GetUserAll")
	public String GetObjectFromAccount (Model model) {
	String getAllAccount=  restTemplate.getForObject("http://localhost:8081/findAllAccount",String.class);
	model.addAttribute("user", getAllAccount);
	return "viewAccount";
	}
	
	@GetMapping("/GetTransactionAll")
	public String GetObjectFromTransaction (Model model) {
	String getAllTransaction=  restTemplate.getForObject("http://localhost:8081/findAllTransaction",String.class);
	model.addAttribute("transac", getAllTransaction);
	return "ListTransactiom";
	}
	
	@GetMapping("/viewAccountTransac")
	public String viewAccountTrans(){
		return  "accountDetals";
	}
	
}
	

