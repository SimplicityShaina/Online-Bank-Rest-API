package com.example.onlinebanking.controller;

import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.example.onlinebanking.domain.Transaction;
import com.example.onlinebanking.service.TransactionService;
import com.example.onlinebanking.validation.TransactionValidator;



@Controller
public class TransactionController {
	
	@Autowired
	TransactionService transactionService;
	
	@Autowired
	TransactionValidator transactionValidator;
	

	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		binder.addValidators(transactionValidator);
	}
	
	
	
	//____________Transfer Between Accounts_______________//
	
	@RequestMapping(value="/transamt",method=RequestMethod.GET)
	public String transfersave(Transaction transaction){
		return "transfer";
	}
	
	@RequestMapping(value="/savetrans",method=RequestMethod.POST)
	public String savetransfer(@ModelAttribute Transaction transaction,Model model)
	{
		Transaction transferamt=transactionService.transferamount(transaction.getAmounttx(),transaction.getFromAccount(),transaction.getToAccount());
		model.addAttribute("transactionService",transferamt);
		

		return "amttransfersaved";
		
		

	}
	
	//_________________DEPOSIT AMOUNT__________________//
	@GetMapping(value="/depositform")
	public String depositform(@ModelAttribute("transaction")Transaction transaction)
	{
		
		return "deposit";
	}
	@GetMapping(value="/amtdepositform")
	public String Amountdepositform(@ModelAttribute("transaction")Transaction transaction)
	{
		
		return "amtdeposit";
	}
	
	@PostMapping(value="/savedeposit")
	public String savedeposit(@Valid @ModelAttribute("transaction") Transaction transaction,Model model,BindingResult result)
	{
		transactionValidator.validate(transaction, result);
		System.out.println("result.hasErrors()"+result.hasErrors());
		if(result.hasErrors()){
			System.out.println("return back to deposit form");
		}else{
		Transaction depositamount=transactionService.deposit(transaction.getDepositamt(), transaction.getFromAccount(),transaction.getToAccount());
		model.addAttribute("newbalance",depositamount);
		}
		return "amtdeposit";
		
	}
	
	
	//_________________WITHDRAW FROM ACCOUNT___________________________//
	@RequestMapping(value="/withdrawform",method=RequestMethod.GET)
		public String withdrawform(Transaction transaction){
		
		return "withdraw";
	}
	
	@RequestMapping(value="/savewithdrawform",method=RequestMethod.POST)
	public String savewithdrawamt(@ModelAttribute Transaction transaction,Model model)
	{
		
		Transaction withdrawamount=transactionService.withdraw(transaction.getWithdrawamt(), transaction.getFromAccount(), transaction.getToAccount());
		model.addAttribute("withdrawbalance",withdrawamount);
		return "withdrawsaved";
		
	}
	

	
	@GetMapping(value="/findAllTransaction",produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Transaction>> findAllTransaction(){
		System.out.println("all transaction details");
		List<Transaction> transList=transactionService.findAllTransaction();
		return new ResponseEntity<List<Transaction>>(transList,HttpStatus.OK);
		}
	
	@GetMapping("/listTransaction")
	public String listtTransactionPage(Transaction transaction)

	{
		return "listTransaction";
	}
	
//	@GetMapping(value="/findOne/{accno}",produces=MediaType.APPLICATION_JSON_VALUE)
//	public ResponseEntity<Account>findOne(@PathVariable long accno){
//		Account account=accountServiceJpa.getById(accno);
//		System.out.println("accno is" +account);
//		return new ResponseEntity<Account>(account,HttpStatus.OK);
//		
	
	
	
	
}
