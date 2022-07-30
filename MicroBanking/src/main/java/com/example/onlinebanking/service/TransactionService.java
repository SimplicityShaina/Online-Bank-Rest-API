package com.example.onlinebanking.service;

import com.example.onlinebanking.domain.Transaction;

public interface TransactionService {
	

	public void save(Transaction transaction);

	public Transaction transferamount(double amounttx, long fromAccount, long toAccount);
	public Transaction deposit( double depositamt, long fromAccount, long toAccount);
	public Transaction withdraw(double withdrawamt, long fromAccount, long toAccount) ;
	


	

}
