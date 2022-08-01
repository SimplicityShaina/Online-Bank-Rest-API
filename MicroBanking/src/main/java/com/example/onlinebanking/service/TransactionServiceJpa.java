package com.example.onlinebanking.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.onlinebanking.domain.Transaction;
import com.example.onlinebanking.repository.TransactionRepository;





public class TransactionServiceJpa implements TransactionService {

	@Autowired
	TransactionRepository transactionrepository;

	@Override
	public void save(Transaction transaction) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Transaction transferamount(double amounttx, long fromAccount, long toAccount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Transaction deposit(double depositamt, long fromAccount, long toAccount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Transaction withdraw(double withdrawamt, long fromAccount, long toAccount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Transaction> findAllTransaction() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
