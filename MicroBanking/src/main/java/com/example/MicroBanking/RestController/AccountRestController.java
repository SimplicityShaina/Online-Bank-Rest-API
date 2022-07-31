package com.example.MicroBanking.RestController;

import java.util.List;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.MicroBanking.domain.Account;
import com.example.MicroBanking.service.AccountServiceJpa;


@RestController
public class AccountRestController {
	
	@Autowired
	@Qualifier(value="accountServiceJpa")
	AccountServiceJpa accountServiceJpa;
	
	//
	
	@ResponseBody
	@PostMapping(value="/create",produces=MediaType.APPLICATION_JSON_VALUE,consumes=MediaType.APPLICATION_JSON_VALUE)
			
	public ResponseEntity<String> saveaccount(@RequestBody Account acc){
		accountServiceJpa.save(acc);
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@DeleteMapping(value="/delete/{accno}",produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> deleteaccount(@PathVariable long accno){
		accountServiceJpa.deleteById(accno);
		HttpHeaders headers=new HttpHeaders();
				headers.add("authorization", new String(Base64.encodeBase64String("shaina123:shaina123".getBytes())));
				return new ResponseEntity<String>("unable to delete",headers,HttpStatus.GONE);
	}

	
	@ResponseBody
	@GetMapping(value="/findAllAccount",produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Account>> findAllAccount(){
		System.out.println("all account holder details");
		List<Account> accList=accountServiceJpa.findAllAccount();
		return new ResponseEntity<List<Account>>(accList,HttpStatus.OK);
		}
	
	

	
	
	@GetMapping(value="/findOne/{accno}",produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Account>findOne(@PathVariable long accno){
		Account account=accountServiceJpa.getById(accno);
		System.out.println("accno is" +account);
		return new ResponseEntity<Account>(account,HttpStatus.OK);
		
//		
//		Long userId = tx.getid();
//		RestTemplate restTemplate = new RestTemplate();
//		String endPoints=""
	
	}
	
		
	
}
