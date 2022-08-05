package com.example.onlinebanking.service;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.onlinebanking.domain.Account;
import com.example.onlinebanking.domain.Transaction;
import com.example.onlinebanking.repository.AccountRepository;
import com.example.onlinebanking.repository.TransactionRepository;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired
	AccountRepository accountRepository;
	

	@Autowired
	TransactionRepository transactionRepository;
	
	@Override
	public void save(Account acc) {
		accountRepository.save(acc);
		Transaction tx=new Transaction();
		tx.setComments("creating account");
		tx.setAmounttx(acc.getAccBalance());
		tx.setFromAccount(acc.getAccno());
		tx.setTxdate(acc.getOpendate());
		transactionRepository.save(tx);
		
		}
	

	@Override
	public boolean exists(long accno) {
		
		return accountRepository.existsById(accno);
	}
	@Override
	public void updateById(long accno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(long accno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Account getById(long accno) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public List<Account> findAllAccount() {
		// TODO Auto-generated method stub
		return null;
	}

}
