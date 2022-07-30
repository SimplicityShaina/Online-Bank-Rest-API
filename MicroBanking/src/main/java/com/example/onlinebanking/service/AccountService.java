package com.example.onlinebanking.service;



import java.util.List;

import com.example.onlinebanking.domain.Account;






public interface AccountService {
	public void save(Account acc);
	public void updateById(long accno);
	public void deleteById(long accno);
	public Account getById(long accno);
	

	public boolean exists(long accno);
	public List<Account> findAllAccount();
//	public Account getById(Account acc);
	//public Account viewaccount (long accno, String acctType, String accholdername, Date opendate, long accBalance, long mobile);
//	public Account viewaccount(long accno, String accType, String accholdername, java.util.Date opendate,
//			double accBalance, long mobile);


	
	

}
