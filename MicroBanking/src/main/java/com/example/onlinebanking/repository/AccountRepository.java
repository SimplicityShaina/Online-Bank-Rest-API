package com.example.onlinebanking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.onlinebanking.domain.Account;


public interface AccountRepository extends JpaRepository <Account,Long>{


}
