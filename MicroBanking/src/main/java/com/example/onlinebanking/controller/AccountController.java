package com.example.onlinebanking.controller;



import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.example.onlinebanking.domain.Account;
import com.example.onlinebanking.service.AccountService;
import com.example.onlinebanking.validation.AccountValidator;



@Controller
public class AccountController {
	
	
	@Autowired
	@Qualifier(value="accountServiceJpa")
	AccountService accountService;
	
	//RestTemplate restTemplate = new RestTemplate();
	
	@Autowired
	AccountValidator accountValidator;
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		binder.addValidators(accountValidator);
	}
	
	
	@RequestMapping(value="/saveaccount",method=RequestMethod.POST)
	public String saveAccount(@Valid @ModelAttribute ("account") Account acc, BindingResult result ){
		System.out.println("result.hasErrors()"+result.hasErrors());
		if(result.hasErrors()){
			
			System.out.println("return accountform.jsp");
			if(accountService.exists(acc.getAccno())){
				result.addError(new ObjectError("accno","the account number"+acc.getAccno()+"  already exists."));
			
			}
			return "accountform";
		}else
		{
			accountService.save(acc);
			System.out.println("success"+result.hasErrors());
			return "accountsucess";
		}
			
		
	}
	@RequestMapping(value="/createaccount",method=RequestMethod.GET)
	public String accountForm(Account acc){
		return "accountform";
		
	}
	
	@RequestMapping("/welcome")
	public String welcomePage(Account acc)

	{
		return "welcome";
	}
	
	
//	@GetMapping("/findOneAccount")
//	public String findAccountPage(Account acc)
//
//	{
//		return "accountDetals";
//	}
	
//	@GetMapping("/set-myaccount")
//	public String MyAccountPage(Account acc,Model model)
//	{
//		return "myaccount";
//	}
//	
	
	@GetMapping("/listAccount")
	public String listAccountPage(Account acc)

	{
		return "listAccount";
	}
	
	


}