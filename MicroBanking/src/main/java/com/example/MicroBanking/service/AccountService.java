package com.example.MicroBanking.service;



import java.util.List;

import com.example.MicroBanking.domain.Account;


public interface AccountService {
	public void save(Account acc);
	public void updateById(long accno);
	public void deleteById(long accno);
	public Account getById(long accno);
	

	public boolean exists(long accno);
	public List<Account> findAllAccount();


}
