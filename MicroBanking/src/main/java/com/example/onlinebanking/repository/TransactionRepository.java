package com.example.onlinebanking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.onlinebanking.domain.Transaction;





public interface TransactionRepository extends JpaRepository<Transaction,Long> {



}
