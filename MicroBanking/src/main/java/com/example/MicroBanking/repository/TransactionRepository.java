package com.example.MicroBanking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MicroBanking.domain.Transaction;



public interface TransactionRepository extends JpaRepository<Transaction,Long> {



}
